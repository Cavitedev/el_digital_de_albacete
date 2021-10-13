import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/next_page.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class NewsListState extends Equatable {
  const NewsListState();
}

class Loading extends NewsListState {
  @override
  List<Object> get props => [];
}

class Loaded extends NewsListState{

  final ListNews listNews;
  final NextPage nextPage;


  Loaded({@required this.listNews, @required this.nextPage});

  @override
  List<Object> get props => [listNews,nextPage];
}

class Error extends NewsListState{
  final String message;


  Error({@required this.message});

  @override
  List<Object> get props => [message];

}