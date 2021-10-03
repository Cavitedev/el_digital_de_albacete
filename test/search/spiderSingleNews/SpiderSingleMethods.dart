import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';

class SpiderSingleMethods {
  static Future<ExtraNewsData> setUpScrapping(
      SpiderSingleNews spiderSingleNews) async {
    Future<ExtraNewsData> newsData = spiderSingleNews.scrapSingleNewsPage();
    ExtraNewsData outputData = await newsData;
    return outputData;
  }
}
