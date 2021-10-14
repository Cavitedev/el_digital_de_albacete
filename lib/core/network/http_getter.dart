import 'dart:convert';
import 'dart:io';

import 'package:el_digital_de_albacete/core/error/exceptions.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

abstract class HttpGetter {
  ///
  ///   Returns the document od the url
  ///   Throws a [HttpException] when response is not 200
  Future<dom.Document> accessURL(String _url);
}

class HttpGetterImpl implements HttpGetter {
  factory HttpGetterImpl() => _instance as HttpGetterImpl;
  HttpGetterImpl.constructor({required this.client});

  final http.Client client;

  static final HttpGetter _instance = HttpGetterImpl.constructor(client: http.Client());


  @override
  Future<dom.Document> accessURL(String url) async {
    http.Response response;
    try {
      response = await client.get(Uri.parse(url));
    } on SocketException {
      throw NoInternetException('No hay Internet');
    }
    if (response.statusCode == 200) {
      final String body = utf8.decode(response.bodyBytes);
      final dom.Document document = parser.parse(body);
      return document;
    } else {
      throw HttpException('Página $url no está disponible');
    }
  }
}
