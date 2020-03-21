
import 'package:el_digital_de_albacete/core/network/http_getter.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/models/next_page_model.dart';
import 'package:meta/meta.dart';
abstract class NextPageRemoteDataSource {
  ///
  ///   Returns the listMode of an url
  ///   Throws a [HttpException] when response is not 200
  Future<NextPageModel> getNextPage(String url);
}

class NextPageRemoteDataSourceImpl implements NextPageRemoteDataSource{

  HttpGetter httpGetter;
  NextPageRemoteDataSourceImpl({@required this.httpGetter});
  @override
  Future<NextPageModel> getNextPage(String url) async {
    return NextPageModel.fromDocument(await httpGetter.accessURL(url));
  }

}