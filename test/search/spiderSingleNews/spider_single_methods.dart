import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Models/simple_news_data.dart';
import 'package:el_digital_de_albacete/Spider/spider_single_news.dart';

mixin SpiderSingleMethods {
  static Future<ExtraNewsData> setUpScrapping(SpiderSingleNews spiderSingleNews,
      {SimpleNewsData? simpleNewsData}) async {
    final Future<ExtraNewsData> extraNewsData =
        spiderSingleNews.scrapSingleNewsPage(simpleNewsData);
    final ExtraNewsData outputData = await extraNewsData;
    return outputData;
  }
}
