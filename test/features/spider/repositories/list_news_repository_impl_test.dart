import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/core/error/exceptions.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/next_page.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/data_sources/list_news_remote_data_source.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/data_sources/next_page_remote_data_source.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/models/next_page_model.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/repositories/list_news_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../fixtures/http_failure_fixture.dart';
import '../../../fixtures/list_news_document.dart';

class MockListNewsRemoteDataSouce extends Mock implements ListNewsRemoteDataSource{}
class MockNextPageRemoteDataSouce extends Mock implements NextPageRemoteDataSource{}

main(){
  MockListNewsRemoteDataSouce mockNewsListRemote;
  MockNextPageRemoteDataSouce mockNextPageRemote;
  ListNewsRepositoryImpl repositoryImpl;
  setUp((){
    mockNewsListRemote = MockListNewsRemoteDataSouce();
    mockNextPageRemote = MockNextPageRemoteDataSouce();
    repositoryImpl = ListNewsRepositoryImpl(listNewsSource: mockNewsListRemote, nextPageSource: mockNextPageRemote);
  });

  group('getListNews', (){
    test('should return Right news list when url is right', () async {
      when(mockNewsListRemote.getListNews(any)).thenAnswer((_) async => expectedListNewsModel);

      final Either<Failure,ListNews> output = await repositoryImpl.getListNews(url);

      expect(output, Right(expectedListNewsModel));
    });
    test('should return http failure with right message when remote fails', () async {
      when(mockNewsListRemote.getListNews(any)).thenThrow(HttpException('Page $url is not available'));

      final Either<Failure,ListNews> output = await repositoryImpl.getListNews(url);

      expect(output, Left(HttpFailure(message: 'Page $url is not available')));

    });
  });

  group('getNextPage', (){
    final NextPageModel expectedModel = NextPageModel(url: nextUrl);
    test('should return Right next page when url is right', () async {
      when(mockNextPageRemote.getNextPage(any)).thenAnswer((_) async => expectedModel);

      final Either<Failure,NextPage> output = await repositoryImpl.getNextPage(url);

      expect(output, Right(expectedModel));
    });
    test('should return http failure with right message when remote fails', () async {
      when(mockNextPageRemote.getNextPage(any)).thenThrow(HttpException(httpErrorMessage));

      final Either<Failure,NextPage> output = await repositoryImpl.getNextPage(url);

      expect(output, Left(HttpFailure(message: httpErrorMessage)));

    });
  });
}