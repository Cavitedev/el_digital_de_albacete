import 'package:el_digital_de_albacete/features/list_news/domain/entities/next_page.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/models/next_page_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/list_news_document.dart';

main(){
  final NextPageModel expectedModel = NextPageModel(url: nextUrl);

  test('should be subclass of nextPage', (){
    expect(expectedModel, isA<NextPage>());
  });
  
  group('From document', (){
    test("should return second page when it's on first page", (){

      final NextPageModel output = NextPageModel.fromDocument(sampleListNewsDocument);

      expect(output, expectedModel);

    });
  });
}