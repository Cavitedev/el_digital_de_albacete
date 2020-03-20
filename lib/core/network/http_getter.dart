import 'dart:convert';
import 'package:el_digital_de_albacete/core/error/exceptions.dart';
import 'package:flutter/cupertino.dart';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:meta/meta.dart';

abstract class HttpGetter{

  ///
  ///   Returns the document od the url
  ///   Throws a [HttpException] when response is not 200
  Future<dom.Document> accessURL(String _url);
}


class HttpGetterImpl implements HttpGetter{

  final http.Client client;


  HttpGetterImpl({@required this.client});

  Future<dom.Document> accessURL(String _url) async {
      http.Response response = await client.get(_url);
      if(response.statusCode==200){
      String body = utf8.decode(response.bodyBytes);
      dom.Document document = parser.parse(body);
      return document;
    }else{
        throw new HttpException("Page $_url is not available");
      }
  }
}