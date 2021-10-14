import 'package:el_digital_de_albacete/Models/SimpleData/youtube_video.dart';
import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Spider/spider_single_news.dart';
import 'package:flutter_test/flutter_test.dart';

import 'spider_single_methods.dart';

main() {

  final SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: 'https://www.eldigitaldealbacete.com/2020/04/18/video-el-abrazo-digital-que-mandan-los-alumnos-del-ma-llanos-martinez/');
  late ExtraNewsData outputData;
  setUp(() async{
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
  });

  test('text page gets youtube video list', (){


    expect(outputData.newsContent![6], YoutubeVideo('f1CsMeybqsc'));
    expect(outputData.newsContent!.length, 7);
  });

}