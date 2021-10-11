import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MP4Video.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';
import 'package:flutter_test/flutter_test.dart';

import 'SpiderSingleMethods.dart';

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