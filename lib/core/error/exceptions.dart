class HttpException implements Exception {
  final String message;

  HttpException(this.message);

}

class InternetException implements Exception{
  final String message;

  InternetException(this.message);

}