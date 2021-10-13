import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String message;


  Failure({this.message});
  @override
  List<Object> get props => [message];
}

class HttpFailure extends Failure {}

class InternetFailure extends Failure{}