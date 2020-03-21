import 'dart:io';

import 'package:el_digital_de_albacete/features/list_news/spider/data_sources/next_page_remote_data_source.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/models/next_page_model.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../fixtures/list_news_document.dart';
import 'list_news_remote_data_source_test.dart';
import 'package:mockito/mockito.dart';

main(){
  MockHttpGetter mockHttpGetter;
  NextPageRemoteDataSourceImpl dataSourceImpl;



  setUp((){
    mockHttpGetter = MockHttpGetter();
    dataSourceImpl = NextPageRemoteDataSourceImpl(httpGetter: mockHttpGetter);
  });

  test('should return listView when url is right', () async{
    when(mockHttpGetter.accessURL(any)).thenAnswer((_) async => sampleListNewsDocument);

    final NextPageModel output = await dataSourceImpl.getNextPage("test");
    final NextPageModel expected = NextPageModel(url: nextUrl);

    expect(output, expected);
  });
  test('should return httpException with the right error, when url is not found', (){
    String url = "url";
    when(mockHttpGetter.accessURL(any)).thenThrow(HttpException('Page $url is not available'));

    final call = dataSourceImpl.getNextPage;

    expect(() => call(url), throwsA(predicate((e)=> e is HttpException && e.message=='Page $url is not available')));

  });

}