import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_single_new.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ListNews extends Equatable{
  List<ListSingleNew> listNews;

  ListNews({@required this.listNews});
@override
  List<Object> get props => [listNews];
}