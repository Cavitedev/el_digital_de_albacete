import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/DataOfTable.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/Spider/Spider.dart';
import 'package:html/dom.dart' as dom;

class SpiderSingleNews extends Spider {
  String url;

  SpiderSingleNews({this.url});

  static const String _contentClass = "entry";
  static const String _unworthText = "/Redacción/";

  Future<ExtraNewsData> scrapSingleNewsPage() async {
    dom.Document _document = await accessURL(url);
    List<dom.Element> _entryDatas =
        _document.getElementsByClassName(_contentClass)[0].children;
    List<NewsData> newsInformation = List<NewsData>();

    for (dom.Element _data in _entryDatas) {
      if (_data.localName == "p") {
        if (_data.children.isNotEmpty &&
            _data.children[0].attributes.isNotEmpty) {
          String _imageUrl = _data.children[0].attributes['src'];
          if (_imageUrl != null) {
            newsInformation.add(
                MeaningfulString(string:_imageUrl, textTag: TextTag.img));
          }
        }
        String _text = _data.text;
        if (_text.isNotEmpty && _text!=_unworthText) {
          newsInformation.add(
              MeaningfulString(string: _text, textTag: TextTag.p));
        }
      } else if (_data.localName == "h2") {
        newsInformation.add(
            MeaningfulString(string: _data.text, textTag: TextTag.h2));
      }else if(_data.localName == "table"){
        List<String> headers = List<String>();
        for(dom.Element td in _data.children[0].children[0].children){
          headers.add(td.text);
        }
      List<List<String>> table = List<List<String>>();
        for(int i = 1; i<_data.children[0].children.length; i++){
          dom.Element tr = _data.children[0].children[i];
          List<String> row = List<String>();
          for(dom.Element td in tr.children){
            row.add(td.text);
          }
          table.add(row);
        }
        print("add table");
        newsInformation.add(DataOfTable(table: table, headerRow: headers));
      }
      //
    }

    return ExtraNewsData(newsContent: newsInformation);
  }
}
