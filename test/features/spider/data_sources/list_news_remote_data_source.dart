import 'dart:io';

import 'package:el_digital_de_albacete/core/network/http_getter.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_single_new.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/data_sources/list_news_remote_data_source.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/models/list_news_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../fixtures/list_news_document.dart';

class MockHttpGetter extends Mock implements HttpGetterImpl{}

main(){
  MockHttpGetter mockHttpGetter;
  ListNewsRemoteDataSourceImpl dataSourceImpl;

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

  setUp((){
    mockHttpGetter = MockHttpGetter();
    dataSourceImpl = ListNewsRemoteDataSourceImpl(httpGetter: mockHttpGetter);
  });

  test('should return listView when url is right', () async{
    when(mockHttpGetter.accessURL(any)).thenAnswer((_) async => sampleDocument);

    final ListNewsModel output = await dataSourceImpl.getListNews("test");

    expect(output.listNews[0], expectedModel.listNews[0]);
    expect(output.listNews[1], expectedModel.listNews[1]);
    expect(output.listNews.length, 25);
  });
  test('should return httpException with the right error, when url is not found', (){
    String url = "url";
    when(mockHttpGetter.accessURL(any)).thenThrow(HttpException('Page $url is not available'));

    final call = dataSourceImpl.getListNews;

    expect(() => call(url), throwsA(predicate((e)=> e is HttpException && e.message=='Page $url is not available')));

  });
}