import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/UnorderedList.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';
import 'SpiderSingleMethods.dart';

void main(){

  SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: "https://www.eldigitaldealbacete.com/2020/03/15/el-sescam-cancela-las-citas-no-urgentes-con-el-medico-de-cabecera-pediatras-y-de-enfermeria-incluidas-las-analiticas/");
  ExtraNewsData outputData;
  setUp(() async{
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
  });

  test('text page gets unordered list', (){



    expect((outputData.newsContent[0] as UnorderedList).elements[0],MeaningfulString(textTag: TextTag.h4, string: "En Atención Primaria, los centros permanecerán abiertos para atender la demanda urgente, quedando suspendida toda la actividad previamente programada."));
    expect(outputData.newsContent.length, 12);
  });



}



