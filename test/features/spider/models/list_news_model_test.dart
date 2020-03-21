import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/models/list_news_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/list_news_document.dart';

void main() {


  test('should be a subclass of ListNews', () {
    expect(expectedListNewsModel, isA<ListNews>());
  });
  group('fromDocument', () {
    test('should return right model when everything is OK', () {
      final ListNewsModel output = ListNewsModel.fromDocument(sampleListNewsDocument);

      expect(output.listNews[0], expectedListNewsModel.listNews[0]);
      expect(output.listNews[1], expectedListNewsModel.listNews[1]);
      expect(output.listNews.length, 25);
    });
  });
}
