import 'package:el_digital_de_albacete/core/error/exceptions.dart';
import 'package:el_digital_de_albacete/core/network/http_getter.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:html/dom.dart' as dom;
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import '../../fixtures/single_list_document.dart';
class MockHttpClient extends Mock implements http.Client{}

void main(){
  HttpGetterImpl httpGetter;
  MockHttpClient mockHttpClient;
  String url = "https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/";

  http.Response response;
  setUp(() async{
    mockHttpClient = MockHttpClient();
    httpGetter = HttpGetterImpl.constructor(client: mockHttpClient);

  });
  test('is singleton', (){
    HttpGetterImpl singleton1 = HttpGetterImpl();
    HttpGetterImpl singleton2 = HttpGetterImpl();
    expect(singleton1,singleton2);
  });
  group('access url',(){
    test('should return document on url', () async{
      response = await http.get(url);
      when(mockHttpClient.get(any)).thenAnswer((_) async => response);


      final dom.Document document = await httpGetter.accessURL(url);


      verify(mockHttpClient.get(url));

      //Problem with https parsing somewhere, page may change
      expect(document.body.innerHtml.substring(0,100000), expected.body.innerHtml.substring(0,100000));
    });
    test('should throuw http error with right message when page does not return 200', () async{
      response = http.Response("body",404);

      when(mockHttpClient.get(any)).thenAnswer((_) async => response);

      final call = httpGetter.accessURL;


      expect(() => call(url), throwsA(predicate((e)=> e is HttpException && e.message=='Página $url no está disponible')));
//      verify(mockHttpClient.get(url));
    });

  });
}