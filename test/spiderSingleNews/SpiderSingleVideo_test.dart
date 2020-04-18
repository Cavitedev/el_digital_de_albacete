import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/Video.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';
import 'package:flutter_test/flutter_test.dart';

import 'SpiderSingleMethods.dart';

main(){

  SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: "https://www.eldigitaldealbacete.com/2020/04/18/video-el-abrazo-digital-que-mandan-los-alumnos-del-ma-llanos-martinez/");
  ExtraNewsData outputData;
  setUp(() async{
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
  });

  test('text page gets unordered list', (){


    expect(outputData.newsContent[6], Video(link: "https://www.youtube.com/embed/f1CsMeybqsc?feature=oembed"));
    expect(outputData.newsContent.length, 7);
  });

}