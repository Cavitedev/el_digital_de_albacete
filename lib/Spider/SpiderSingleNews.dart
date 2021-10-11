import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MP4Video.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/UnorderedList.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/YoutubeVideo.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/ParagraphStyledData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/table/DataOfTable.dart';
import 'package:el_digital_de_albacete/core/network/http_getter.dart';
import 'package:html/dom.dart' as dom;

const String mp4Video = "wp-video";

class SpiderSingleNews {
  String? url;

  late HttpGetterImpl httpGetterImpl;
  SpiderSingleNews({this.url}) {
    httpGetterImpl = HttpGetterImpl();
  }
  static const List<String> _contentClasses = <String>[
    "NormalTextoNoticia",
    "entry",
    "column",
  ];
  static const String _unworthText = "/Redacción/";

  Future<ExtraNewsData> scrapSingleNewsPage() async {
    dom.Document _document = await httpGetterImpl.accessURL(url!);
    List<dom.Element> _entryDatas = <dom.Element>[];
    for (String _contentClass in _contentClasses) {
      List<dom.Element> _someEntryDatas = _document.getElementsByClassName(_contentClass);

      for (dom.Element _entryDara in _someEntryDatas) {
        _entryDatas.addAll(_entryDara.children);
      }
    }
    List<NewsData> newsInformation = <NewsData>[];

    for (dom.Element _data in _entryDatas) {
      if (_data.localName == "p") {
        if (_data.children.isNotEmpty && _data.children[0].localName == "iframe") {
          newsInformation.add(YoutubeVideo(_data.children[0].attributes['src']!));
        } else {
          _getImageAroundAnchor(_data, newsInformation);

          if (_data.text.trim().isNotEmpty && _data.text != _unworthText) {
            if (_data.children.isNotEmpty && _data.children[0].localName == "a") {
              continue;
            }
//            print("paragraph"+ _text);
            if (_data.getElementsByClassName("s1").length == 1) {
              _data = _data.children[0];
            }
            newsInformation.add(ParagraphStyledData(_data.innerHtml));
//            newsInformation
//                .add(MeaningfulString(string: _text, textTag: TextTag.p));

          }
        }
      } else if (_data.localName == "figure") {
        _getImage(_data, newsInformation);
      } else if (["h2", "h3", "h4"].contains(_data.localName)) {
        newsInformation
            .add(MeaningfulString(string: _data.text, textTag: MeaningfulString.textTagFromString(_data.localName)));
      } else if (_data.localName == "ul") {
        List<dom.Element> ul = _data.children;
        List<NewsData> liElements = <NewsData>[];
        for (dom.Element li in ul) {
          if (li.children.isNotEmpty && ["h2", "h3", "h4"].contains(li.children[0].localName)) {
            liElements.add(MeaningfulString(
                string: li.children[0].text, textTag: MeaningfulString.textTagFromString(li.children[0].localName)));
          } else {
            liElements.add(ParagraphStyledData(li.text));
          }
        }
        newsInformation.add(UnorderedList(elements: liElements));
      } else if (_data.localName == "div" && _data.attributes['class'] == mp4Video) {
        String? link = _data.getElementsByTagName("video")[0].getElementsByTagName("source")[0].attributes['src'];
        if (link != null) {
          newsInformation.add(MP4Video(link: link));
        }
      } else if (_data.localName == "table") {
        List<String> headers = <String>[];
        for (dom.Element td in _data.children[0].children[0].children) {
          headers.add(td.text);
        }
        List<List<dynamic>> table = <List<dynamic>>[];
        for (int i = 1; i < _data.children[0].children.length; i++) {
          dom.Element tr = _data.children[0].children[i];
          List<dynamic> row = [];
          for (dom.Element td in tr.children) {
            row.add(td.text);
          }
          table.add(row);
        }
        newsInformation.add(DataOfTable(table, headers));
      }

      //
    }

    return ExtraNewsData(newsContent: newsInformation);
  }

  void _getImageAroundAnchor(dom.Element _data, List<NewsData> newsInformation) {
    for (dom.Element child in _data.children) {
      if (child.localName == "a") {
        _getImage(child, newsInformation);
      }
    }
  }

  void _getImage(dom.Element child, List<NewsData> newsInformation) {
    for (dom.Element linkChild in child.children) {
      if (linkChild.attributes.isNotEmpty) {
        String? _imageUrl = linkChild.attributes['data-src'];
        _addImage(_imageUrl, newsInformation);
      }
    }
  }

  void _addImage(String? _imageUrl, List<NewsData> newsInformation) {
    if (_imageUrl != null) {
      newsInformation.add(MeaningfulString(string: _imageUrl, textTag: TextTag.img));
    }
  }
}
