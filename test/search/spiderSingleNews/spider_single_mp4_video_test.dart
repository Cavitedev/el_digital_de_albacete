import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/mp4_video.dart';
import 'package:el_digital_de_albacete/Spider/spider_single_news.dart';
import 'package:flutter_test/flutter_test.dart';

import 'spider_single_methods.dart';

main(){

  SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: "https://www.eldigitaldealbacete.com/2020/04/18/video-mensaje-para-los-vecinos-de-valdeganga-desde-las-cocinas-del-hospital-de-albacete/");
  late ExtraNewsData outputData;
  setUp(() async{
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
  });

  test('text page gets mp4 video list', (){

    expect(outputData.newsContent![1], MP4Video(link: "https://www.eldigitaldealbacete.com/wp-content/uploads/2020/04/video-valdeganga.mp4?_=1"));
    expect(outputData.newsContent!.length, 2);
  });

}