import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_single_new.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/models/list_news_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/list_news_document.dart';

void main() {
  final ListNewsModel expectedModel = ListNewsModel(listNews: <ListSingleNew>[
    ListSingleNew(
        imageSrc:
            "https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2020/03/consejo-gobierno-castilla-la-mancha-paracetamol-620x330.jpg",
        link:
            "https://www.eldigitaldealbacete.com/2020/03/20/entran-en-vigor-las-medidas-extraordinarias-economico-financieras-y-de-refuerzo-de-medios-de-la-junta546825/",
        publishDate: "20 marzo, 2020",
        title: "Entran en vigor las medidas extraordinarias económico-financieras y de refuerzo de medios de la Junta"),
    ListSingleNew(
        imageSrc: "https://cdn.oondeo.es/www.eldigitaldealbacete.com/wp-content/uploads/2019/12/SUPERALBA_NOTICIA_ALBACETE-23-1-620x330.jpg",
        link: "https://www.eldigitaldealbacete.com/2020/03/19/el-gasto-en-alimentacion-se-impulsa-un-12-por-el-efecto-bunker-provocado-por-el-coronavirus/",
        publishDate: "19 marzo, 2020",
        title: "El gasto en alimentación se impulsa un 12% por el ‘efecto búnker’ provocado por el coronavirus"),
  ]);

  test('should be a subclass of ListNews', () {
    expect(expectedModel, isA<ListNews>());
  });
  group('fromDocument', () {
    test('should return right model when everything is OK', () {
      final ListNewsModel output = ListNewsModel.fromDocument(sampleDocument);

      expect(output.listNews[0], expectedModel.listNews[0]);
      expect(output.listNews[1], expectedModel.listNews[1]);
      expect(output.listNews.length, 25);
    });
  });
}
