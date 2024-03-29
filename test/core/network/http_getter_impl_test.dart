import 'dart:io';

import 'package:el_digital_de_albacete/core/error/exceptions.dart';
import 'package:el_digital_de_albacete/core/network/http_getter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:html/dom.dart' as dom;
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import '../../fixtures/single_list_document.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late HttpGetterImpl httpGetter;
  late MockHttpClient mockHttpClient;
  const String url =
      'https://www.eldigitaldealbacete.com/2020/03/20/coronavirus-el-ayuntamiento-garantiza-la-atencion-integral-a-las-mujeres-victimas-de-la-violencia-de-genero-en-albacete-durante-la-crisis-del-covid-19/';

  http.Response response;
  setUpAll(() {
    registerFallbackValue(Uri());
  });
  setUp(() async {
    mockHttpClient = MockHttpClient();
    httpGetter = HttpGetterImpl.constructor(client: mockHttpClient);
  });
  test('is singleton', () {
    final HttpGetterImpl singleton1 = HttpGetterImpl();
    final HttpGetterImpl singleton2 = HttpGetterImpl();
    expect(singleton1, singleton2);
  });
  group('access url', () {
    test('should return document on url', () async {
      final Uri uri = Uri.parse(url);
      response = await http.get(uri);
      when(() => mockHttpClient.get(any())).thenAnswer((_) async => response);

      final dom.Document document = await httpGetter.accessURL(url);

      verify(() => mockHttpClient.get(uri));

      //Problem with https parsing somewhere, page may change
      expect(document.body!.innerHtml.substring(0, 100),
          expected.body!.innerHtml.substring(0, 100));
    });
    test(
        'should throw http error with right message when page does not return 200',
        () async {
      response = http.Response('body', 404);

      when(() => mockHttpClient.get(any())).thenAnswer((_) async => response);

      final call = httpGetter.accessURL;

      expect(
        () => call(url),
        throwsA(predicate((e) =>
            e is HttpException &&
            e.message == 'Página $url no está disponible')),
      );
//      verify(mockHttpClient.get(url));
    });
    test('should throw no internet error when there is not internet', () async {
      when(() => mockHttpClient.get(any())).thenThrow(const SocketException(
          "Failed host lookup: 'www.eldigitaldealbacete.com'"));

      final call = httpGetter.accessURL;
      expect(
        () => call(url),
        throwsA(predicate(
            (e) => e is NoInternetException && e.message == 'No hay Internet')),
      );
    });
  });
}
