import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/Models/simple_news_data.dart';
import 'package:el_digital_de_albacete/core/error/exceptions.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/core/network/http_getter.dart';
import 'package:el_digital_de_albacete/tools/web_regex.dart';
import 'package:html/dom.dart' as dom;

class SpiderNewsListSpecificPage {
  String? url;
  int page = 1;

  static const String _newsClassListing = 'masonry-grid';
  static const String _newsClassSearch = 'posts-container';
  static const String failedLoadingNews = 'failedLoadingNews';
  static final List<SimpleNewsData> noMoreNewsFound = [
    SimpleNewsData(title: failedLoadingNews)
  ];

  late HttpGetterImpl httpGetterImpl;

  SpiderNewsListSpecificPage({this.url}) {
    httpGetterImpl = HttpGetterImpl();
  }

  Future<Either<Failure, List<SimpleNewsData>>> scrapCurrentPage() async {
    return _scrapPage(url!);
  }

  Future<Either<Failure, List<SimpleNewsData>>> scrapNextPage() async {
    if (page == -1) {
      return const Left(NoMoreNewsFailure(message: 'No hay más noticias'));
    }
    page++;
    return _scrapPage(_getNextUrl()!);
  }

  Future<Either<Failure, List<SimpleNewsData>>> _scrapPage(String url) async {
    try {
      //    print(_nextURL);
      final dom.Document _document = await httpGetterImpl.accessURL(url);
//      print(_nextURL);
      return Right(_getNews(_document));
    } on HttpException catch (e) {
      return Left(HttpFailure(message: e.message));
    } on NoInternetException catch (e) {
      return Left(NoInternetFailure(message: e.message));
    } on Exception {
      return const Left(
          HttpParseFailure(message: 'No se pudo parsear la página web'));
    }
  }

  List<SimpleNewsData> _getNews(dom.Document _document) {
    final dom.Element? articlesParent =
        _document.getElementById(_newsClassListing);

    if (articlesParent == null) {
      return _getNewsSearch(_document);
    }

    final List<dom.Element> articles = articlesParent.children;

    final List<SimpleNewsData> news = [];
    for (final dom.Element article in articles) {
      if (!article.classes.contains('post-element')) {
        break;
      }
      final dom.Element mainDiv = article.children[0];
      article.outerHtml;
      final styleStr = mainDiv.attributes['style'];
      final String? imageLink = WebRegex.getUrlFromStyleRegex(styleStr);

      news.add(
        SimpleNewsData(
          link: mainDiv.children[0].attributes['href'],
          title: mainDiv.children[0].children[0].text,
          imageSrc: imageLink ?? 'error',
          publishDate: mainDiv.getElementsByClassName('date')[0].text,
        ),
      );
      //  debugPrint(news.last.title);
    }
    return news;
  }

  List<SimpleNewsData> _getNewsSearch(dom.Document _document) {
    final List<dom.Element> articles =
        _document.getElementById(_newsClassSearch)!.children;
    final List<SimpleNewsData> news = [];
    for (final dom.Element article in articles) {
      final dom.Element anchor = article.children[0];
      final image = anchor.children.firstWhere(
          (element) => element.localName == 'img',
          orElse: () => anchor);

      final String? imageLink = image.localName == 'img'
          ? WebRegex.getUrlFromStyleRegex(
              image.attributes['data-src'] ??
                  image.attributes['src'] ??
                  image.attributes['data-srcset'],
            )
          : null;

      final dom.Element postDetails =
          article.getElementsByClassName('post-details').first;

      news.add(
        SimpleNewsData(
          link: article.getElementsByTagName('a').first.attributes['href'],
          title: postDetails.children[1].text,
          imageSrc: imageLink ?? 'error',
          publishDate: postDetails.children[0].children[1].text,
        ),
      );
      //  debugPrint(news.last.title);
    }
    return news;
  }

  String? _getNextUrl() {
    if (page == 1) {
      return url;
    } else {
      return '${url!}page/$page';
    }
  }
}
