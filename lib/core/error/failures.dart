import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  const Failure({this.message});

  final String? message;

  @override
  List<Object?> get props => <String?>[message];
}

class HttpFailure extends Failure {

  const HttpFailure({final String? message}): super(message: message);
}

class NoInternetFailure extends Failure {

  const NoInternetFailure({final String? message}): super(message: message);
}

class HttpParseFailure extends Failure {

  const HttpParseFailure({final String? message}) : super(message: message);

}

class NoMoreNewsFailure extends Failure {

  const NoMoreNewsFailure({final String? message}): super(message: message);
}