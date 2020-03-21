import 'package:el_digital_de_albacete/core/network/http_getter.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/repositories/list_news_repository.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/usecases/get_list_news.dart';
import 'package:el_digital_de_albacete/features/list_news/domain/usecases/get_next_page.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/data_sources/list_news_remote_data_source.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/data_sources/next_page_remote_data_source.dart';
import 'package:el_digital_de_albacete/features/list_news/spider/repositories/list_news_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final GetIt sl = GetIt.instance; // service locator

void init() {

  sl.registerLazySingleton(() => GetListNews(repository: sl()));
  sl.registerLazySingleton(() => GetNextPage(repository: sl()));

  sl.registerLazySingleton<ListNewsRepository>(
      () => ListNewsRepositoryImpl(nextPageSource: sl(), listNewsSource: sl()));


  sl.registerLazySingleton<ListNewsRemoteDataSource>(
      () => ListNewsRemoteDataSourceImpl(httpGetter: sl()));
  sl.registerLazySingleton<NextPageRemoteDataSource>(
      () => NextPageRemoteDataSourceImpl(httpGetter: sl()));


  sl.registerLazySingleton<HttpGetter>(() => HttpGetterImpl(client: sl()));

  sl.registerLazySingleton(() => http.Client());
}
