import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';

class SpiderSingleMethods {
  static Future<ExtraNewsData> setUpScrapping(SpiderSingleNews spiderSingleNews,
      {SimpleNewsData? simpleNewsData}) async {
    Future<ExtraNewsData> extraNewsData =
        spiderSingleNews.scrapSingleNewsPage(simpleNewsData);
    ExtraNewsData outputData = await extraNewsData;
    return outputData;
  }
}
