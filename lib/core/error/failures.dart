import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String message;


  Failure({this.message});
  @override
  List<Object> get props => [message];
}

class HttpFailure extends Failure {

  HttpFailure({String message}): super(message: message);
}

class InternetFailure extends Failure{

  InternetFailure({String message}): super(message:message);
}