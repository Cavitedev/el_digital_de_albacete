import 'dart:convert';

import 'package:el_digital_de_albacete/Models/NewsData.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

class SpiderPage {
  String url;

  SpiderPage({this.url});


  Future<List<NewsData>> scrapPage() async {
    dom.Document _document = await _accessURL(url);
    return _getNews(_document);
  }
  
  Future<dom.Document> _accessURL(String _url) async {
    http.Response response =
    await http.get(url);
    String body = utf8.decode(response.bodyBytes);
    dom.Document document = parser.parse(body);
    return document;
  }
  List<NewsData> _getNews(dom.Document _document){
    List<dom.Element> articles =
        _document.body.getElementsByClassName("post-listing")[0].children;
    List<NewsData> news = List<NewsData>();
    for (dom.Element article in articles) {
      dom.Element anchor = article.children[0].children[0];
      news.add(NewsData(
        link: anchor.attributes['href'],
        title: article.children[1].children[0].text,
        imageSrc: anchor.children[0].attributes['src'],
        publishDate: article.children[2].children[0].text,
      ));
      //  debugPrint(news.last.title);
    }
    return news;
  }

  

}
