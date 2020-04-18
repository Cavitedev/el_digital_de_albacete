import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:el_digital_de_albacete/core/error/exceptions.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/core/network/http_getter.dart';
import 'package:html/dom.dart' as dom;


class SpiderNewsListSpecificPage {
  
  String url;
  String _nextURL;

  static const String _newsClassListing = "post-listing";
  static const String _paginationClass = "pagination";
  static const String _currentPageClass = "current";
  static const String _pageClass = "page";
  static const String failedLoadingNews = 'failedLoadingNews';
  static final List<SimpleNewsData> noMoreNewsFound = [SimpleNewsData(title: failedLoadingNews)];

  HttpGetterImpl httpGetterImpl;

  SpiderNewsListSpecificPage({this.url}){
    httpGetterImpl = HttpGetterImpl();
  }

  Future<Either<Failure, List<SimpleNewsData>>> scrapCurrentPage() async {
    return await _scrapPage(url);
  }
  Future<Either<Failure, List<SimpleNewsData>>> scrapNextPage() async {
    if(_nextURL==null) return null;
    if(_nextURL== failedLoadingNews) {
      return Left(NoMoreNewsFailure(message: "No hay más noticias"));
    }
    return await _scrapPage(_nextURL);
  }
  
  Future<Either<Failure, List<SimpleNewsData>>> _scrapPage(String _url) async {
    try{
      dom.Document _document = await httpGetterImpl.accessURL(_url);
      _nextURL = _getNextUrl(_document);
      return Right(_getNews(_document));
    }on HttpException catch(e){
      return Left(HttpFailure(message: e.message));
    }

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
        imageSrc: anchor.children.length>0 ? anchor.children[0].attributes['data-src'] : "error",
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
