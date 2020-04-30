import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/ParagraphStyledData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/StyledString.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';

import 'SpiderSingleMethods.dart';

void main(){

  SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: "https://www.eldigitaldealbacete.com/2020/03/14/numerosos-comercios-bares-y-restaurantes-de-albacete-deciden-cerrar/");
  ExtraNewsData outputData;
  setUp(() async{
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
  });

    test('text page to include paragraphs with span class s1', (){



      expect((outputData.newsContent[1] as ParagraphStyledData).styledData[0],StyledString(text: "El comercio de Albacete presenta una imagen muy diferente a la de cualquier sábado. El habitual ambiente bullicioso, el pasear de bolsas y las colas en las cajas de las tiendas de ropa han dejado paso al silencio y las puertas cerradas."));
      expect(outputData.newsContent.length, 10);
//      expect((outputData.newsContent.length),4);
    });



}

