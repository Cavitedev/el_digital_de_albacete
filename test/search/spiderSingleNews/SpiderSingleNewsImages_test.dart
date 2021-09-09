import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';
import 'package:flutter_test/flutter_test.dart';

import 'SpiderSingleMethods.dart';

void main(){
//Web page doesn't work, wait to them to fix it
  SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: "https://www.eldigitaldealbacete.com/2020/03/06/castilla-la-mancha-intensificara-las-practicas-internacionales-en-las-ensenanzas-de-cerca-de-una-decena-de-familias-de-la-fp-para-el-empleo/");
  ExtraNewsData outputData;
  setUp(() async{
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
//    SpiderSingleMethods.printImages(outputData);
  });
  test('imagesAppearing', (){
    expect((outputData.newsContent[2] as MeaningfulString), MeaningfulString(textTag: TextTag.img, string: "https://www.eldigitaldeciudadreal.com/wp-content/uploads/2020/03/clausura-la-ii-convencin-nacional-de-delegados-de-la-academia-getbrit_49627050347_o.jpg"));
    expect((outputData.newsContent[5] as MeaningfulString), MeaningfulString(textTag: TextTag.img, string: "https://www.eldigitaldeciudadreal.com/wp-content/uploads/2020/03/clausura-la-ii-convencin-nacional-de-delegados-de-la-academia-getbrit_49626318323_o.jpg"));
    expect((outputData.newsContent[8] as MeaningfulString), MeaningfulString(textTag: TextTag.img, string: "https://www.eldigitaldeciudadreal.com/wp-content/uploads/2020/03/clausura-la-ii-convencin-nacional-de-delegados-de-la-academia-getbrit_49626305593_o.jpg"));
    expect((outputData.newsContent[12] as MeaningfulString), MeaningfulString(textTag: TextTag.img, string: "https://www.eldigitaldeciudadreal.com/wp-content/uploads/2020/03/clausura-la-ii-convencin-nacional-de-delegados-de-la-academia-getbrit_49626296728_o.jpg"));
  });
}