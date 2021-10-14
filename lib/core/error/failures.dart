import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String? message;


  const Failure({this.message});
  @override
  List<Object?> get props => [message];
}

class HttpFailure extends Failure {

  const HttpFailure({String? message}): super(message: message);
}

class NoInternetFailure extends Failure {

  const NoInternetFailure({String? message}): super(message: message);
}

class HttpParseFailure extends Failure {

  const HttpParseFailure({String? message}) : super(message: message);

}

class NoMoreNewsFailure extends Failure {

  const NoMoreNewsFailure({String? message}): super(message: message);
}