import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ListSingleNew extends Equatable{
  final String imageSrc;
  final String title;
  final String publishDate;
  final String link;

  ListSingleNew(
      {@required this.imageSrc, @required this.title, @required this.publishDate,@required this.link});

  @override
  List<Object> get props => [imageSrc,title,publishDate,link];
}
