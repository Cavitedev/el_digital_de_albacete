import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
class NextPage extends Equatable{
  final String url;

  NextPage({@required this.url});

  @override
  List<Object> get props => [url];
}