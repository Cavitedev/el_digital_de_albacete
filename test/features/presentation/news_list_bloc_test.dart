import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_single_new.dart';
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
        getListNews: mockGetListNews, getNextPage: mockGetNextPage, url: url);
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
    test('should emit [Loaded] when news are retrieved succesfully from Loading state', () async {
      when(mockGetListNews(any))
          .thenAnswer((_) async => Right(expectedListNewsModel));
      when(mockGetNextPage(any))
          .thenAnswer((_) async => Right(NextPage(url: nextUrl)));
      List<ListSingleNew> previousList= List<ListSingleNew>();
      previousList += expectedListNewsModel.listNews;
      final ListNews lastExpected = ListNews(listNews: previousList);
      final List<NewsListState> expected = [
        Loading(),
        Loaded(
            nextPage: NextPage(url: nextUrl), listNews: lastExpected)
      ];
      expectLater(bloc, emitsInOrder(expected));
      bloc.add(LoadMoreNews(url: url));
    });


    test('should add news to the state when news are retrieved succesfully from Loaded State', () async {

      when(mockGetListNews(any))
          .thenAnswer((_) async => Right(expectedListNewsModel));
      when(mockGetNextPage(any))
          .thenAnswer((_) async => Right(NextPage(url: nextUrl)));
      List<ListSingleNew> previousList= List<ListSingleNew>();
      previousList+= expectedListNewsModel.listNews;
      final ListNews firstExpected = ListNews(listNews: previousList);
      List<ListSingleNew> NewsListBloc = previousList+ expectedListNewsModel.listNews;
      final ListNews lastExpected = ListNews(listNews: NewsListBloc);
      final List<NewsListState> expected = [
        Loading(),
        Loaded(nextPage: NextPage(url: nextUrl), listNews: firstExpected),
        Loading(),
        Loaded(
            nextPage: NextPage(url: nextUrl), listNews: lastExpected)
      ];

      Future<void> expectEmission =  expectLater(bloc, emitsInOrder(expected));
      bloc.add(LoadMoreNews(url: url));
      bloc.add(LoadMoreNews(url: url));
      await expectEmission;
      expect(bloc.pages,2);

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

  group('RefreshPage', (){
    test('should emit [Loaded] when news are retrieved succesfully from Loading state', () async {
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
      bloc.add(RefreshNews(url: url));
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
      bloc.add(RefreshNews(url: url));
    });

    test('should emit [Error] when nextPageLoading fails', () async{
      when(mockGetListNews(any))
          .thenAnswer((_) async => Right(expectedListNewsModel));
      when(mockGetNextPage(any))
          .thenAnswer((_) async => Left(HttpFailure(message: httpErrorMessage)));

      final List<NewsListState> expected = [
        Loading(),
        Error(message: httpErrorMessage)
      ];

      final Future<void> futureExpect = expectLater(bloc, emitsInOrder(expected));
      bloc.add(RefreshNews(url: url));
      await futureExpect;
      expect(bloc.pages,0);
    });


  });
}
