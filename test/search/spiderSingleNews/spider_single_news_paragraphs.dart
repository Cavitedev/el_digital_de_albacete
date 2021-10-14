import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/paragraph_styled_data.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/styled_string.dart';
import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Spider/spider_single_news.dart';
import 'package:flutter_test/flutter_test.dart';

import 'spider_single_methods.dart';

void main(){

  final SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: 'https://www.eldigitaldealbacete.com/2020/03/15/policia-local-cierra-19-establecimientos-hosteleros-en-albacete-que-se-han-saltado-la-prohibicion-de-abrir/');
  late ExtraNewsData outputData;
  setUp(() async{
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
  });

  test('2 entries', (){



    expect((outputData.newsContent![0] as ParagraphStyledData).styledData[0],const StyledString(text: 'El alcalde de Albacete, Vicente Casañ, ha garantizado el respaldo del Equipo de Gobierno municipal a las medidas decretadas por el presidente del Gobierno en el marco de la declaración del Estado de Alarma. “Para frenar la rápida propagación del Coronavirus es imprescindible la lealtad institucional y la cooperación entre administraciones, y desde luego el Ayuntamiento de Albacete está y seguirá estando a la altura las circunstancias teniendo como máxima prioridad la seguridad de nuestros vecinos”, ha asegurado.'));
    expect(outputData.newsContent!.length, 6);
  });



}

