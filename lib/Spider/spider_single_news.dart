import 'package:el_digital_de_albacete/Models/SimpleData/meaningful_string.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/mp4_video.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/news_data.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/paragraph_styled_data.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/table/data_of_table.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/unordered_list.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/youtube_video.dart';
import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Models/simple_news_data.dart';
import 'package:el_digital_de_albacete/core/network/http_getter.dart';
import 'package:html/dom.dart' as dom;

const String mp4Video = 'wp-video';

class SpiderSingleNews {
  String url;

  late HttpGetterImpl httpGetterImpl;

  SpiderSingleNews({required this.url}) {
    httpGetterImpl = HttpGetterImpl();
  }

  static const List<String> _contentClasses = <String>[
    'NormalTextoNoticia',
    'entry',
    'column',
  ];
  static const String _unworthText = '/Redacción/';

  Future<ExtraNewsData> scrapSingleNewsPage(
      SimpleNewsData? simpleNewsData,) async {
    final dom.Document _document = await httpGetterImpl.accessURL(url);

    final List<dom.Element> _entryDatas = <dom.Element>[];

    for (final String _contentClass in _contentClasses) {
      final List<dom.Element> _someEntryDatas =
          _document.getElementsByClassName(_contentClass);

      for (final dom.Element _entryDara in _someEntryDatas) {
        _entryDatas.addAll(_entryDara.children);
      }
    }
    final List<NewsData> newsInformation = <NewsData>[];

    for (dom.Element _data in _entryDatas) {
      if (_data.localName == 'p') {
        if (_data.children.isNotEmpty &&
            _data.children[0].localName == 'iframe') {
          newsInformation
              .add(YoutubeVideo(_data.children[0].attributes['src']!));
        } else {
          _getImageAroundAnchor(_data, newsInformation);

          if (_data.text.trim().isNotEmpty && _data.text != _unworthText) {
            if (_data.children.isNotEmpty &&
                _data.children[0].localName == 'a') {
              continue;
            }
//            print("paragraph"+ _text);
            if (_data.getElementsByClassName('s1').length == 1) {
              _data = _data.children[0];
            }
            newsInformation.add(ParagraphStyledData(_data.innerHtml));
//            newsInformation
//                .add(MeaningfulString(string: _text, textTag: TextTag.p));

          }
        }
      } else if (_data.localName == 'figure') {
        _getImage(_data, newsInformation);
      } else if (['h2', 'h3', 'h4'].contains(_data.localName)) {
        newsInformation.add(MeaningfulString(
            string: _data.text,
            textTag: MeaningfulString.textTagFromString(_data.localName),),);
      } else if (_data.localName == 'ul') {
        final List<dom.Element> ul = _data.children;
        final List<NewsData> liElements = <NewsData>[];
        for (final dom.Element li in ul) {
          if (li.children.isNotEmpty &&
              ['h2', 'h3', 'h4'].contains(li.children[0].localName)) {
            liElements.add(MeaningfulString(
                string: li.children[0].text,
                textTag: MeaningfulString.textTagFromString(
                    li.children[0].localName,),),);
          } else {
            liElements.add(ParagraphStyledData(li.innerHtml));

          }
        }
        newsInformation.add(UnorderedList(elements: liElements));
      } else if (_data.localName == 'div' &&
          _data.attributes['class'] == mp4Video) {
        final String? link = _data
            .getElementsByTagName('video')[0]
            .getElementsByTagName('source')[0]
            .attributes['src'];
        if (link != null) {
          newsInformation.add(MP4Video(link: link));
        }
      } else if (_data.localName == 'table') {
        final List<String> headers = <String>[];
        for (final dom.Element td in _data.children[0].children[0].children) {
          headers.add(td.text);
        }
        final List<List<dynamic>> table = <List<dynamic>>[];
        for (int i = 1; i < _data.children[0].children.length; i++) {
          final dom.Element tr = _data.children[0].children[i];
          final List<dynamic> row = [];
          for (final dom.Element td in tr.children) {
            row.add(td.text);
          }
          table.add(row);
        }
        newsInformation.add(DataOfTable(table, headers));
      }

      //
    }

    return ExtraNewsData(
        newsContent: newsInformation,
        simpleNewsData: _getSimpleData(_document, simpleNewsData),);
  }

  SimpleNewsData _getSimpleData(
      dom.Document document, SimpleNewsData? simpleNewsData,) {

    if (simpleNewsData?.isComplete ?? false) {
      return simpleNewsData!;
    } else {
      simpleNewsData ??= SimpleNewsData(link: url);

      if (simpleNewsData.title == null) {
        final List<dom.Element> elements =
            document.getElementsByClassName('entry-title');
        final String title =
            elements.firstWhere((element) => element.localName == 'h1').text;
        simpleNewsData.title = title;
      }

      if (simpleNewsData.publishDate == null) {
        final List<dom.Element> elements =
            document.getElementsByClassName('date');
        final String date =
            elements.firstWhere((element) => element.localName == 'span').text;
        simpleNewsData.publishDate = date;
      }

      if (simpleNewsData.imageSrc == null) {
        final List<dom.Element> elements =
            document.getElementsByClassName('single-featured-image');
        final dom.Node? imageElement = elements
            .firstWhere((element) => element.localName == 'figure')
            .firstChild;
        if (imageElement != null) {
          final String? imageUrl = imageElement.attributes['data-src'] ??
              imageElement.attributes['src'];
          simpleNewsData.imageSrc = imageUrl;
        }
      }

      return simpleNewsData;
    }
  }

  void _getImageAroundAnchor(
      dom.Element _data, List<NewsData> newsInformation,) {
    for (final dom.Element child in _data.children) {
      if (child.localName == 'a') {
        _getImage(child, newsInformation);
      }
    }
  }

  void _getImage(dom.Element child, List<NewsData> newsInformation) {
    for (final dom.Element linkChild in child.children) {
      if (linkChild.attributes.isNotEmpty) {
        final String? _imageUrl =
            linkChild.attributes['data-src'] ?? linkChild.attributes['src'];
        _addImage(_imageUrl, newsInformation);
      }
    }
  }

  void _addImage(String? _imageUrl, List<NewsData> newsInformation) {
    if (_imageUrl != null) {
      newsInformation
          .add(MeaningfulString(string: _imageUrl, textTag: TextTag.img));
    }
  }
}
