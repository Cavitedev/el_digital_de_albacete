import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/next_page.dart';

abstract class ListNewsRepository{
  Future<Either<Failure,ListNews>> getListNews(String url);

  Future<Either<Failure,NextPage>> getNextPage(String url);
}