import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/next_page.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/usecases/get_list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/usecases/get_next_page.dart'
    as nextPageUsecase;
import 'package:el_digital_de_albacete/features/list_news/presentation/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/http_failure_fixture.dart';
import '../../fixtures/list_news_document.dart';

class MockGetListNews extends Mock implements GetListNews {}

class MockGetNextPage extends Mock implements nextPageUsecase.GetNextPage {}

main() {
  NewsListBloc bloc;
  MockGetListNews mockGetListNews;
  MockGetNextPage mockGetNextPage;
  String url = "any";
  setUp(() {
    mockGetNextPage = MockGetNextPage();
    mockGetListNews = MockGetListNews();
    bloc = NewsListBloc(
        getListNews: mockGetListNews, getNextPage: mockGetNextPage);
  });

  test('initialState should be Loading', () {
    expect(bloc.initialState, equals(Loading()));
  });

  group('Get more news', () {
    test('should get data from both usecases', () async {
      when(mockGetListNews(any))
          .thenAnswer((_) async => Right(expectedListNewsModel));
      when(mockGetNextPage(any))
          .thenAnswer((_) async => Right(NextPage(url: nextUrl)));

      bloc.add(LoadMoreNews(url: url));
      await untilCalled(mockGetListNews(any));
      await untilCalled(mockGetNextPage(any));

      verify(mockGetNextPage(nextPageUsecase.Params(url: url)));
      verify(mockGetListNews(Params(url: url)));
    });
    test('should emit [Loaded] when news are retrieved succesfully', () async {
      when(mockGetListNews(any))
          .thenAnswer((_) async => Right(expectedListNewsModel));
      when(mockGetNextPage(any))
          .thenAnswer((_) async => Right(NextPage(url: nextUrl)));

      final List<NewsListState> expected = [
        Loading(),
        Loaded(
            nextPage: NextPage(url: nextUrl), listNews: expectedListNewsModel)
      ];
      expectLater(bloc, emitsInOrder(expected));
      bloc.add(LoadMoreNews(url: url));
    });

    test('should emit [Error] when newsLoading fails', (){
      when(mockGetListNews(any))
          .thenAnswer((_) async => Left(HttpFailure(message: httpErrorMessage)));
      when(mockGetNextPage(any))
          .thenAnswer((_) async => Right(NextPage(url: nextUrl)));

      final List<NewsListState> expected = [
        Loading(),
        Error(message: httpErrorMessage)
      ];

      expectLater(bloc, emitsInOrder(expected));
      bloc.add(LoadMoreNews(url: url));
    });

    test('should emit [Error] when nextPageLoading fails', (){
      when(mockGetListNews(any))
          .thenAnswer((_) async => Right(expectedListNewsModel));
      when(mockGetNextPage(any))
          .thenAnswer((_) async => Left(HttpFailure(message: httpErrorMessage)));

      final List<NewsListState> expected = [
        Loading(),
        Error(message: httpErrorMessage)
      ];

      expectLater(bloc, emitsInOrder(expected));
      bloc.add(LoadMoreNews(url: url));
    });
  });
}
