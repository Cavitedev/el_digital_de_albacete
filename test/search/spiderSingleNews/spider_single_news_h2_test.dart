import 'package:el_digital_de_albacete/Models/SimpleData/meaningful_string.dart';
import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Spider/spider_single_news.dart';
import 'package:flutter_test/flutter_test.dart';

import 'spider_single_methods.dart';

void main(){

  final SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: 'https://www.eldigitaldealbacete.com/2020/03/04/el-senado-aprueba-definitivamente-la-nueva-senda-de-estabilidad-y-el-gobierno-encauza-los-presupuestos/');
  late ExtraNewsData outputData;
  setUp(() async{
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
  });

    test('text page H2 attributes', (){



      expect(outputData.newsContent![8] as MeaningfulString,MeaningfulString(string: 'LA NUEVA SENDA',textTag: TextTag.h2));
      expect(outputData.newsContent![14] as MeaningfulString,MeaningfulString(string: 'OPOSICIÓN.',textTag: TextTag.h2));
      expect(outputData.newsContent![20] as MeaningfulString,MeaningfulString(string: 'VETO DEL SENADO',textTag: TextTag.h2));
    });



}

