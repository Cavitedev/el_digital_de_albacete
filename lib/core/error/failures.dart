import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String? message;


  Failure({this.message});
  @override
  List<Object?> get props => [message];
}

class HttpFailure extends Failure {

  HttpFailure({String? message}): super(message: message);
}

class NoInternetFailure extends Failure {

  NoInternetFailure({String? message}): super(message: message);
}

class HttpParseFailure extends Failure {

  HttpParseFailure({String? message}) : super(message: message);

}

class NoMoreNewsFailure extends Failure {

  NoMoreNewsFailure({String? message}): super(message: message);
}