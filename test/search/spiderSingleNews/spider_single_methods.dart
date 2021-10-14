import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Models/simple_news_data.dart';
import 'package:el_digital_de_albacete/Spider/spider_single_news.dart';

class SpiderSingleMethods {
  static Future<ExtraNewsData> setUpScrapping(SpiderSingleNews spiderSingleNews,
      {SimpleNewsData? simpleNewsData}) async {
    Future<ExtraNewsData> extraNewsData =
        spiderSingleNews.scrapSingleNewsPage(simpleNewsData);
    ExtraNewsData outputData = await extraNewsData;
    return outputData;
  }
}
