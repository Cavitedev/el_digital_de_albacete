import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/paragraph_styled_data.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/styled_string.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:el_digital_de_albacete/Spider/spider_single_news.dart';

import 'spider_single_methods.dart';

void main(){

  SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: "https://www.eldigitaldealbacete.com/2020/03/06/globalcaja-protagonista-en-comercia-2020/");
  late ExtraNewsData outputData;
  setUp(() async{
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
  });

    test('text page nbsp attributes', (){



      expect((outputData.newsContent![0] as ParagraphStyledData).styledData[0],StyledString(extraStyle: ParagraphStyledData.attributesStyles['strong'], text: "El vicepresidente de Globalcaja, Herminio Molina, junto con varios directivos de la entidad, han asistido a la inauguración de Comercia, acto que ha contado con la presencia del alcalde de Albacete, Vicente Casañ, entre otros representantes del Ayuntamiento, Diputación y la Federación de Comercio, quienes han pasado por el stand que tiene la Caja y la Federación de Comercio en el recinto ferial albaceteño, gracias  a la colaboración entre ambas instituciones. "));
    });



}

