import 'package:el_digital_de_albacete/core/network/http_getter.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/models/list_news_model.dart';
import 'package:meta/meta.dart';

abstract class ListNewsRemoteDataSource{
  ///
  ///   Returns the listMode of an url
  ///   Throws a [HttpException] when response is not 200
  Future<ListNewsModel> getListNews(String url);
}

class ListNewsRemoteDataSourceImpl implements ListNewsRemoteDataSource{

  HttpGetter httpGetter;


  ListNewsRemoteDataSourceImpl({@required this.httpGetter});

  @override
  Future<ListNewsModel> getListNews(String url) async {
    return ListNewsModel.fromDocument(await httpGetter.accessURL(url));
  }

}