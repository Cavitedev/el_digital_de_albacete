import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Spider/Spider.dart';
import 'package:html/dom.dart' as dom;
class SpiderSingleNews extends Spider{
  
  String url;
  SpiderSingleNews({this.url});
  
  static const String _contentClass = "entry";
  static const String _newsImportantDataStyle = "text-align: justify;";
  
  Future<ExtraNewsData> scrapSingleNewsPage() async {
    dom.Document _document = await accessURL(url);
    List<dom.Element> _entryDatas = _document.getElementsByClassName(_contentClass)[0].children;
    //TODO retrieve news data
    
    return null;
  }
  
}