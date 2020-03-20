import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_single_new.dart';
import 'package:meta/meta.dart';
import 'package:html/dom.dart' as dom;

const String _newsClassListing = "post-listing";

class ListNewsModel extends ListNews {
  ListNewsModel({
    @required List<ListSingleNew> listNews,
  }) : super(listNews:listNews);

  factory ListNewsModel.fromDocument(dom.Document document) {
    List<dom.Element> articles =
        document.body.getElementsByClassName(_newsClassListing)[0].children;
    List<ListSingleNew> news = List<ListSingleNew>();
    for (dom.Element article in articles) {
      dom.Element anchor = article.children[0].children[0];
      news.add(ListSingleNew(
        link: anchor.attributes['href'],
        title: article.children[1].children[0].text,
        imageSrc: anchor.children[0].attributes['data-src'],
        publishDate: article.children[2].children[0].text,
      ));
      //  debugPrint(news.last.title);
    }
    return ListNewsModel(listNews: news);
  }
}
