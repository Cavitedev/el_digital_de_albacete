import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:el_digital_de_albacete/core/error/exceptions.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/core/network/http_getter.dart';
import 'package:el_digital_de_albacete/tools/web_regex.dart';
import 'package:html/dom.dart' as dom;

class SpiderNewsListSpecificPage {
  String url;
  int page = 1;

  static const String _newsClassListing = "masonry-grid";
  static const String _newsClassSearch = "posts-container";
  static const String failedLoadingNews = 'failedLoadingNews';
  static final List<SimpleNewsData> noMoreNewsFound = [
    SimpleNewsData(title: failedLoadingNews)
  ];

  HttpGetterImpl httpGetterImpl;

  SpiderNewsListSpecificPage({this.url}) {
    httpGetterImpl = HttpGetterImpl();
  }

  Future<Either<Failure, List<SimpleNewsData>>> scrapCurrentPage() async {
    return await _scrapPage(url);
  }

  Future<Either<Failure, List<SimpleNewsData>>> scrapNextPage() async {
    if (page == -1) {
      return Left(NoMoreNewsFailure(message: "No hay más noticias"));
    }
    page++;
    return await _scrapPage(_getNextUrl());
  }

  Future<Either<Failure, List<SimpleNewsData>>> _scrapPage(String url) async {
    try {
      //    print(_nextURL);
      dom.Document _document = await httpGetterImpl.accessURL(url);
//      print(_nextURL);
      return Right(_getNews(_document));
    } on HttpException catch (e) {
      return Left(HttpFailure(message: e.message));
    } on NoInternetException catch (e) {
      return Left(NoInternetFailure(message: e.message));
    } catch (e) {
      return Left(
          HttpParseFailure(message: "No se pudo parsear la página web"));
    }
  }

  List<SimpleNewsData> _getNews(dom.Document _document) {
    dom.Element articlesParent = _document.getElementById(_newsClassListing);

    if (articlesParent == null) {
      return _getNewsSearch(_document);
    }

    List<dom.Element> articles = articlesParent.children;

    List<SimpleNewsData> news = [];
    for (dom.Element article in articles) {
      if (!article.classes.contains("post-element")) {
        break;
      }
      dom.Element mainDiv = article.children[0];
      article.outerHtml;
      String styleStr = mainDiv.attributes["style"];
      String imageLink = WebRegex.getUrlFromStyleRegex(styleStr);

      news.add(SimpleNewsData(
        link: mainDiv.children[0].attributes['href'],
        title: mainDiv.children[0].children[0].text,
        imageSrc: imageLink ?? 'error',
        publishDate: mainDiv.getElementsByClassName("date")[0].text,
      ));
      //  debugPrint(news.last.title);
    }
    return news;
  }

  List<SimpleNewsData> _getNewsSearch(dom.Document _document) {
    List<dom.Element> articles =
        _document.getElementById(_newsClassSearch).children;
    List<SimpleNewsData> news = [];
    for (dom.Element article in articles) {
      dom.Element anchor = article.children[0];
      dom.Element image = anchor.children.firstWhere(
          (element) => element.localName == "img",
          orElse: () => anchor);

      String imageLink = image.localName == "img"
          ? WebRegex.getUrlFromStyleRegex(image?.attributes['data-src'] ??
              image?.attributes['src'] ??
              image?.attributes['data-srcset'])
          : null;

      news.add(SimpleNewsData(
        link: article.children[0].attributes['href'],
        title: article.children[1].children[1].text,
        imageSrc: imageLink ?? 'error',
        publishDate: article.children[1].children[0].children[1].text,
      ));
      //  debugPrint(news.last.title);
    }
    return news;
  }

  String _getNextUrl() {
    if (page == 1) {
      return url;
    } else {
      return url + "page/" + page.toString();
    }
  }
}
