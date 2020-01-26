import 'dart:convert';

import 'package:el_digital_de_albacete/Models/NewsData.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

class SpiderPage {
  String url;
  String _nextURL;

  static const String _newsClassListing = "post-listing";
  static const String _paginationClass = "pagination";
  static const String _currentPageClass = "current";
  static const String _pageClass = "page";
  static const String failedLoadingNews = 'failedLoadingNews';
  static final List<NewsData> noMoreNewsFound = [NewsData(title: failedLoadingNews)]; 
  
  
  SpiderPage({this.url});

  Future<List<NewsData>> scrapCurrentPage() async {
    return await _scrapPage(url);
  }
  Future<List<NewsData>> scrapNextPage() async {
    if(_nextURL==null) return null;
    if(_nextURL== failedLoadingNews) {
      return noMoreNewsFound;
    }
    return await _scrapPage(_nextURL);
  }
  
  Future<List<NewsData>> _scrapPage(String _url) async {
    dom.Document _document = await _accessURL(_url);
    _nextURL = _getNextUrl(_document);
    return _getNews(_document);
  }
  

  Future<dom.Document> _accessURL(String _url) async {
    try {
      http.Response response = await http.get(_url);
      String body = utf8.decode(response.bodyBytes);
      dom.Document document = parser.parse(body);
      url = _url;
      return document;
    } catch (e) {
      print(e);
      return null;
    }
  }

  List<NewsData> _getNews(dom.Document _document) {
    List<dom.Element> articles =
        _document.body.getElementsByClassName(_newsClassListing)[0].children;
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

  String _getNextUrl(dom.Document _document) {
    dom.Element _pagesDiv =
        _document.body.getElementsByClassName(_paginationClass)[0];
    int _currentPage =
        int.parse(_pagesDiv.getElementsByClassName(_currentPageClass)[0].text);
    String _nextPage = (_currentPage+1).toString();
    String _nextUrl = failedLoadingNews;
    for(dom.Element element in _pagesDiv.getElementsByClassName(_pageClass)) {
      if(element.attributes['title']==_nextPage) {
        _nextUrl = element.attributes['href']; 
      }
    }
    return _nextUrl;
  }
}
