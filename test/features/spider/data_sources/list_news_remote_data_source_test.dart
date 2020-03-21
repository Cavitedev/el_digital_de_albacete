import 'dart:io';

import 'package:el_digital_de_albacete/core/network/http_getter.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/data_sources/list_news_remote_data_source.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/models/list_news_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../fixtures/list_news_document.dart';

class MockHttpGetter extends Mock implements HttpGetterImpl{}

main(){
  MockHttpGetter mockHttpGetter;
  ListNewsRemoteDataSourceImpl dataSourceImpl;



  setUp((){
    mockHttpGetter = MockHttpGetter();
    dataSourceImpl = ListNewsRemoteDataSourceImpl(httpGetter: mockHttpGetter);
  });

  test('should return listView when url is right', () async{
    when(mockHttpGetter.accessURL(any)).thenAnswer((_) async => sampleListNewsDocument);

    final ListNewsModel output = await dataSourceImpl.getListNews("test");

    expect(output.listNews[0], expectedListNewsModel.listNews[0]);
    expect(output.listNews[1], expectedListNewsModel.listNews[1]);
    expect(output.listNews.length, 25);
  });
  test('should return httpException with the right error, when url is not found', (){
    String url = "url";
    when(mockHttpGetter.accessURL(any)).thenThrow(HttpException('Page $url is not available'));

    final call = dataSourceImpl.getListNews;

    expect(() => call(url), throwsA(predicate((e)=> e is HttpException && e.message=='Page $url is not available')));

  });
}