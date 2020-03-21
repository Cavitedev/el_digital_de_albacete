import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/next_page.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/usecases/get_list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/usecases/get_next_page.dart'
    as nextPageUsecase;
import './bloc.dart';
import 'package:meta/meta.dart';

class NewsListBloc extends Bloc<NewsListEvent, NewsListState> {
  final nextPageUsecase.GetNextPage getNextPage;
  final GetListNews getListNews;

  NewsListBloc({@required this.getNextPage, @required this.getListNews});

  @override
  NewsListState get initialState => Loading();

  @override
  Stream<NewsListState> mapEventToState(
    NewsListEvent event,
  ) async* {
    if (event is LoadMoreNews) {
      final Future<Either<Failure, ListNews>> futureNews =
          getListNews(Params(url: event.url));
      final Future<Either<Failure, NextPage>> futureNextPage =
          getNextPage(nextPageUsecase.Params(url: event.url));
      List responses = await Future.wait([futureNews, futureNextPage]);
      final Either<Failure, ListNews> news = responses[0];
      final Either<Failure, NextPage> nextPage = responses[1];
      yield* news.fold((failure) async* {
        yield Error(message: failure.message);
      }, (news) async* {
        yield* nextPage.fold((failure) async* {
          yield Error(message: failure.message);
        }, (nextPage) async* {
          yield Loaded(listNews: news, nextPage: nextPage);
        });
      });

    }
  }
}
