class HttpException implements Exception {
  final String message;

  HttpException(this.message);

}



class NoInternetException implements Exception {
  final String message;

  NoInternetException(this.message);

}