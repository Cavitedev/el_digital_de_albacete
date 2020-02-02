import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Spider/Spider.dart';
import 'package:html/dom.dart' as dom;

class SpiderSingleNews extends Spider {
  String url;

  SpiderSingleNews({this.url});

  static const String _contentClass = "entry";

  Future<ExtraNewsData> scrapSingleNewsPage() async {
    dom.Document _document = await accessURL(url);
    List<dom.Element> _entryDatas =
        _document.getElementsByClassName(_contentClass)[0].children;
    List<MeaningfulString> newsInformation = List<MeaningfulString>();

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
        if (_text.isNotEmpty && _text!="/Redacción/") {
          newsInformation.add(
              MeaningfulString(string: _text, textTag: TextTag.p));
        }
      } else if (_data.localName == "h2") {
        newsInformation.add(
            MeaningfulString(string: _data.text, textTag: TextTag.h2));
      }
      //
    }

    return ExtraNewsData(meaningfulStrings: newsInformation);
  }
}
