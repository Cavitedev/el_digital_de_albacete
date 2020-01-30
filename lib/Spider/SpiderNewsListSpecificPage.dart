import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:el_digital_de_albacete/Spider/Spider.dart';
import 'package:html/dom.dart' as dom;


class SpiderNewsListSpecificPage extends Spider {
  
  String url;
  String _nextURL;

  static const String _newsClassListing = "post-listing";
  static const String _paginationClass = "pagination";
  static const String _currentPageClass = "current";
  static const String _pageClass = "page";
  static const String failedLoadingNews = 'failedLoadingNews';
  static final List<SimpleNewsData> noMoreNewsFound = [SimpleNewsData(title: failedLoadingNews)]; 
  
  
  SpiderNewsListSpecificPage({this.url});

  Future<List<SimpleNewsData>> scrapCurrentPage() async {
    return await _scrapPage(url);
  }
  Future<List<SimpleNewsData>> scrapNextPage() async {
    if(_nextURL==null) return null;
    if(_nextURL== failedLoadingNews) {
      return noMoreNewsFound;
    }
    return await _scrapPage(_nextURL);
  }
  
  Future<List<SimpleNewsData>> _scrapPage(String _url) async {
    dom.Document _document = await accessURL(_url);
    _nextURL = _getNextUrl(_document);
    return _getNews(_document);
  }
  



  List<SimpleNewsData> _getNews(dom.Document _document) {
    List<dom.Element> articles =
        _document.body.getElementsByClassName(_newsClassListing)[0].children;
    List<SimpleNewsData> news = List<SimpleNewsData>();
    for (dom.Element article in articles) {
      dom.Element anchor = article.children[0].children[0];
      news.add(SimpleNewsData(
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
