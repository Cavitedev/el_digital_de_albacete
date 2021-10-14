class HttpException implements Exception {
  HttpException(this.message);

  final String message;

}



class NoInternetException implements Exception {
  NoInternetException(this.message);

  final String message;

}