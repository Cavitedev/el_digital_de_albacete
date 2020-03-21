import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/core/error/exceptions.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/next_page.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/repositories/list_news_repository.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/data_sources/list_news_remote_data_source.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/data_sources/next_page_remote_data_source.dart';
import 'package:meta/meta.dart';

class ListNewsRepositoryImpl implements ListNewsRepository {
  final ListNewsRemoteDataSource listNewsSource;
  final NextPageRemoteDataSource nextPageSource;

  ListNewsRepositoryImpl({@required this.listNewsSource, @required this.nextPageSource});

  @override
  Future<Either<Failure, ListNews>> getListNews(String url) async {
    try{

    return  Right(await listNewsSource.getListNews(url));
    } on HttpException catch(e){
      return Left(HttpFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, NextPage>> getNextPage(String url) async {
    try{
    return Right(await nextPageSource.getNextPage(url));

    } on HttpException catch(e){
      return Left(HttpFailure(message: e.message));
    }
  }


}