import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/repositories/list_news_repository.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/usecases/get_list_news.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../fixtures/list_news_document.dart';

class MockListNewsRepository extends Mock implements ListNewsRepository{}

main(){
  MockListNewsRepository mockRepository;
  GetListNews usecase;
  String url = "any";
  setUp((){
    mockRepository = MockListNewsRepository();
    usecase = GetListNews(repository: mockRepository);
  });

  test('should retrieve page from repository', () async{
    when(mockRepository.getListNews(any)).thenAnswer((_) async => Right(expectedListNewsModel));

    final Either<Failure,ListNews> result = await usecase(Params(url: url));

    expect(result, Right(expectedListNewsModel));
    verify(mockRepository.getListNews(url));


  });


}