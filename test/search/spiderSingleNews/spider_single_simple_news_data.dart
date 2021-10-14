import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Models/simple_news_data.dart';
import 'package:el_digital_de_albacete/Spider/spider_single_news.dart';
import 'package:flutter_test/flutter_test.dart';

import 'spider_single_methods.dart';

void main() {

  group("Fetches simple news data from details page 1", () {
    test("Fetches all data with null simpleNewsData", () async {
      const String url =
          "https://www.eldigitaldealbacete.com/2021/10/12/page-defiende-en-bruselas-la-proteccion-de-la-ue-para-la-cuchilleria-de-albacete/";
      final SpiderSingleNews spider = SpiderSingleNews(url: url);

      ExtraNewsData outputData = await SpiderSingleMethods.setUpScrapping(spider);

      SimpleNewsData simpleNewsData = outputData.simpleNewsData!;

      expect(simpleNewsData.link, url);

      expect(simpleNewsData.title, "Page defiende en Bruselas la protección de la UE para la cuchillería de Albacete");

      expect(simpleNewsData.publishDate, "12 octubre, 2021");

      expect(simpleNewsData.imageSrc, "https://www.eldigitaldealbacete.com/wp-content/uploads/2021/10/page-bruselas-cuchillería-01.jpg");
    });

        test("Fetches all data with simpleNewsData with only link", () async {
      const String url =
          "https://www.eldigitaldealbacete.com/2021/10/12/page-defiende-en-bruselas-la-proteccion-de-la-ue-para-la-cuchilleria-de-albacete/";
      final SpiderSingleNews spider = SpiderSingleNews(url: url);

      SimpleNewsData inputSimpleNewsData = SimpleNewsData(link: url);

      ExtraNewsData outputData = await SpiderSingleMethods.setUpScrapping(spider, simpleNewsData: inputSimpleNewsData);

      SimpleNewsData simpleNewsData = outputData.simpleNewsData!;


      expect(simpleNewsData.title, "Page defiende en Bruselas la protección de la UE para la cuchillería de Albacete");

      expect(simpleNewsData.publishDate, "12 octubre, 2021");

      expect(simpleNewsData.imageSrc, "https://www.eldigitaldealbacete.com/wp-content/uploads/2021/10/page-bruselas-cuchillería-01.jpg");
    });
  });
}
