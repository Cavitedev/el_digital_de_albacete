import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_single_new.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/next_page.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/usecases/get_list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/usecases/get_next_page.dart'
    as nextPageUsecase;
import './bloc.dart';
import 'package:meta/meta.dart';

class NewsListBloc extends Bloc<NewsListEvent, NewsListState> {
  String url;
  int pages = 0;
  List<ListSingleNew> newsList = List<ListSingleNew>();
  final nextPageUsecase.GetNextPage getNextPage;
  final GetListNews getListNews;

  NewsListBloc({@required this.getNextPage, @required this.getListNews, @required url});

  @override
  NewsListState get initialState => Loading();

  @override
  Stream<NewsListState> mapEventToState(
    NewsListEvent event,
  ) async* {
    if (event is LoadMoreNews) {

      yield* getNews(event.url,(ListNews news,nextPage) async*{
        pages++;
        newsList += news.listNews;
        yield Loaded(listNews: ListNews(listNews: newsList), nextPage: nextPage);
      });


    }
    else if (event is RefreshNews){
      print("refresh");
     yield* getNews(event.url,(ListNews news,nextPage) async*{
       pages=0;
       newsList = news.listNews;
       print(news);
       yield Loaded(listNews: news, nextPage: nextPage);
     });
    }
  }

  Stream<NewsListState> getNews(String url, Function successfulAction) async* {
    yield Loading();
      final Future<Either<Failure, ListNews>> futureNews =
    getListNews(Params(url: url));
    final Future<Either<Failure, NextPage>> futureNextPage =
    getNextPage(nextPageUsecase.Params(url: url));
    List responses = await Future.wait([futureNews, futureNextPage]);
    final Either<Failure, ListNews> news = responses[0];
    final Either<Failure, NextPage> nextPage = responses[1];
    yield* news.fold((failure) async* {
      yield Error(message: failure.message);
    }, (news) async* {
      yield* nextPage.fold((failure) async* {
        yield Error(message: failure.message);
      }, (nextPage) async* {
        yield* successfulAction(news,nextPage);

      });
    });
  }
}
