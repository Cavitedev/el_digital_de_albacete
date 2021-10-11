import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/UnorderedList.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/ParagraphStyledData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/StyledString.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';
import 'SpiderSingleMethods.dart';

void main(){

  SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: "https://www.eldigitaldealbacete.com/2020/03/15/el-sescam-cancela-las-citas-no-urgentes-con-el-medico-de-cabecera-pediatras-y-de-enfermeria-incluidas-las-analiticas/");
  ExtraNewsData outputData;
  test('text page gets unordered list when h3', () async {

  outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);

    expect((outputData.newsContent![0] as UnorderedList).elements[0],MeaningfulString(textTag: TextTag.h4, string: "En Atención Primaria, los centros permanecerán abiertos para atender la demanda urgente, quedando suspendida toda la actividad previamente programada."));
    expect(outputData.newsContent!.length, 12);
  });

  test('Page gets unordered text when there are not tags', () async{
  spiderSingleNews = SpiderSingleNews
  (url: "https://www.eldigitaldealbacete.com/2020/04/18/mas-de-3-000-personas-atendidas-por-cruz-roja-durante-la-pandemia/");
  outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);

  expect(((outputData.newsContent![7] as UnorderedList).elements[0] as ParagraphStyledData).styledData[0],StyledString(text: "16 instalaciones hospitalarias temporales en colaboración con las administraciones públicas para ayudar a descongestionar el sistema sanitario."));
  expect(outputData.newsContent!.length, 12);

  });



}



