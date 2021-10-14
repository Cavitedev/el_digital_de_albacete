import 'dart:convert';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
abstract class Spider{


  
  
  Future<dom.Document?> accessURL(String url) async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      String body = utf8.decode(response.bodyBytes);
      dom.Document document = parser.parse(body);
      return document;
    } catch (e) {
      return null;
    }
  }
}