import 'package:dartz/dartz.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:el_digital_de_albacete/core/usecases/usecase.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/entities/list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/repositories/list_news_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class GetListNews implements UseCase<ListNews, Params>{

  final ListNewsRepository repository;


  GetListNews({@required this.repository});

  @override
  Future<Either<Failure, ListNews>> call(Params params) async {
    return await repository.getListNews(params.url);
  }

}



class Params extends Equatable{
  final String url;


  Params({@required this.url});

  @override
  List<Object> get props => [url];
}