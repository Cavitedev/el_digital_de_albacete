import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';


abstract class NewsListEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadMoreNews extends NewsListEvent{
  final String url;

  LoadMoreNews({@required this.url});

  @override
  List<Object> get props => [url];

}
