import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/ParagraphStyledData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/table/DataOfTable.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/Spider/Spider.dart';
import 'package:html/dom.dart' as dom;

class SpiderSingleNews extends Spider {
  String url;

  SpiderSingleNews({this.url});

  static const List<String> _contentClasses = <String>[
    "NormalTextoNoticia",
    "entry"
  ];
  static const String _unworthText = "/Redacción/";

  Future<ExtraNewsData> scrapSingleNewsPage() async {
    dom.Document _document = await accessURL(url);
    List<dom.Element> _entryDatas;
    for (String _contentClass in _contentClasses) {
      _entryDatas = _document.getElementsByClassName(_contentClass);
      if (_entryDatas.isNotEmpty) break;
    }
    _entryDatas = _entryDatas[0].children;
    List<NewsData> newsInformation = List<NewsData>();

    for (dom.Element _data in _entryDatas) {
      if (_data.localName == "p") {
        String _imageUrl;
        for(dom.Element child in _data.children){
          if (child.attributes.isNotEmpty) {
            _imageUrl = child.attributes['src'];
            _addImage(_imageUrl, newsInformation);
          }
          if(child.localName=="a"){
            for(dom.Element linkChild in child.children){
              if (linkChild.attributes.isNotEmpty) {
                _imageUrl = linkChild.attributes['data-src'];
                _addImage(_imageUrl, newsInformation);
              }
            }
          }
        }




          String _text = _data.innerHtml;


          if (_data.text.trim().isNotEmpty && _data.text != _unworthText) {
//            print("paragraph"+ _text);
            newsInformation.add(ParagraphStyledData(_text));
//            newsInformation
//                .add(MeaningfulString(string: _text, textTag: TextTag.p));

          } else if (_data.localName == "h2") {
            print("h2" + _data.text);
            newsInformation
                .add(MeaningfulString(string: _data.text, textTag: TextTag.h2));
          }
          else if (_data.localName == "table") {
            List<String> headers = List<String>();
            for (dom.Element td in _data.children[0].children[0].children) {
              headers.add(td.text);
            }
            List<List<dynamic>> table = List<List<dynamic>>();
            for (int i = 1; i < _data.children[0].children.length; i++) {
              dom.Element tr = _data.children[0].children[i];
              List<dynamic> row = List<dynamic>();
              for (dom.Element td in tr.children) {
                row.add(td.text);
              }
              table.add(row);
            }
            newsInformation.add(DataOfTable(table, headers));

          }
        }
        //
    }

    return ExtraNewsData(newsContent: newsInformation);
  }

  void _addImage(String _imageUrl, List<NewsData> newsInformation) {
    if (_imageUrl != null) {
      newsInformation
          .add(MeaningfulString(string: _imageUrl, textTag: TextTag.img));
    }
  }
}
