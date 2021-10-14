import 'dart:convert';

import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;
abstract class Spider{


  
  
  Future<dom.Document?> accessURL(String url) async {
    try {
      final http.Response response = await http.get(Uri.parse(url));
      final String body = utf8.decode(response.bodyBytes);
      final dom.Document document = parser.parse(body);
      return document;
    } on Exception {
      return null;
    }
  }
}