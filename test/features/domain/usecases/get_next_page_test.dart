import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/next_page.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/repositories/list_news_repository.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/usecases/get_next_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../fixtures/list_news_document.dart';

class MockListNewsRepository extends Mock implements ListNewsRepository{}

main(){
  MockListNewsRepository mockRepository;
  GetNextPage usecase;
  String url = "any";
  setUp((){
    mockRepository = MockListNewsRepository();
    usecase = GetNextPage(repository: mockRepository);
  });

  test('should retrieve next page from repository', () async{
    when(mockRepository.getNextPage(any)).thenAnswer((_) async => Right(NextPage(url: nextUrl)));

    final Either<Failure,NextPage> result = await usecase(Params(url: url));

    expect(result, Right(NextPage(url: nextUrl)));
    verify(mockRepository.getNextPage(url));


  });


}