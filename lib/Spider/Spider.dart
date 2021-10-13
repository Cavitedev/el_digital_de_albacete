import 'dart:convert';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
abstract class Spider{


  
  
  Future<dom.Document> accessURL(String _url) async {
    try {
      http.Response response = await http.get(_url);
      String body = utf8.decode(response.bodyBytes);
      dom.Document document = parser.parse(body);
      return document;
    } catch (e) {
      print(e);
      return null;
    }
  }
}