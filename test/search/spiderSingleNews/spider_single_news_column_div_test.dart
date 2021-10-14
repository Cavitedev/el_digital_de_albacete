import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/paragraph_styled_data.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/styled_string.dart';
import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Spider/spider_single_news.dart';
import 'package:flutter_test/flutter_test.dart';

import 'spider_single_methods.dart';

void main(){

  final SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: 'https://www.eldigitaldealbacete.com/2020/02/25/cuanto-cobran-de-media-los-pensionistas-de-albacete/');
  late ExtraNewsData outputData;
  setUp(() async{
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
  });

    test('text page with div class column', (){


      //General div
      expect((outputData.newsContent![0] as ParagraphStyledData).styledData[0],StyledString(extraStyle: ParagraphStyledData.attributesStyles['strong'], text: 'La pensión media en Castilla-La Mancha se situó en los 929,49 euros en febrero, lo que supone un crecimiento del 2,3% en relación con el mismo mes de 2019, según ha informado este martes el Ministerio de Inclusión, Seguridad Social y Migraciones.'));
      expect((outputData.newsContent![1] as ParagraphStyledData).styledData[0],const StyledString(text:'En su conjunto, el número de pensiones en la Comunidad Autónoma se situó en este mismo mes en 376.334, que representa un incremento del 0,9% con respecto al mismo mes del año anterior.'));
      expect((outputData.newsContent![2] as ParagraphStyledData).styledData[0],const StyledString(text:'Por provincias, la pensión media que recibieron los guadalajareños fue en febrero de 1.057,10 euros, a quienes siguen los pensionistas de Ciudad Real, que de media percibieron 937,42 euros, y los de Toledo con 927,18 euros. Mientras, los de Albacete, cobraron de media 893,75 euros y de los de Cuenca 855,39 euros.'));
      expect((outputData.newsContent![3] as ParagraphStyledData).styledData[0],const StyledString(text:'De igual modo, de las 376.334 pensiones que se cobraron el primer mes del año en la región, 43.931 fueron por incapacidad permanente, por valor de 906,86 euros; 218.634 por jubilación, por valor medio de 1.069,42 euros y 96.236 por viudedad, cuyo valor medio se ha situado en 714,12 euros.'));
      expect((outputData.newsContent![4] as ParagraphStyledData).styledData[0],const StyledString(text:'En el caso de las pensiones de orfandad, las percibieron un total de 14.997 personas en la región, por valor medio de 405,54. Así las cosas, un total de 2.536 personas percibieron una pensión en favor de familiares, por valor medio de 529,79 euros.'));
      //Column div
      expect((outputData.newsContent![5] as ParagraphStyledData).styledData[0],StyledString(extraStyle: ParagraphStyledData.attributesStyles['strong'],text:'España'));
      expect((outputData.newsContent![6] as ParagraphStyledData).styledData[0],const StyledString(text: 'El conjunto del Sistema alcanza un total de 9.805.148 pensiones contributivas, un 1,01% más respecto al año pasado. 6.102.437 son por jubilación; 2.361.066 corresponden a viudedad; 958.823 a incapacidad permanente; 339.765 a orfandad y 43.057 a favor de familiares.'));
      expect((outputData.newsContent![7] as ParagraphStyledData).styledData[0],const StyledString(text:'La nómina mensual de pensiones contributivas de la Seguridad Social alcanza los 9.872.321 miles de euros.'));
      expect((outputData.newsContent![8] as ParagraphStyledData).styledData[0],const StyledString(text: 'La pensión media de jubilación asciende a 1.156,26 euros, lo que representa un aumento del 2,16% respecto al año pasado. La pensión media del Sistema, que comprende las distintas clases (jubilación, incapacidad permanente, viudedad, orfandad y a favor de familiares), alcanza los 1.006,85 euros mensuales, lo que supone un aumento interanual del 2,20%'));
      expect((outputData.newsContent![9] as ParagraphStyledData).styledData[0],const StyledString(text: 'La Seguridad Social hace pública cada mes esta estadística con el objetivo de ofrecer a los ciudadanos información precisa sobre la evolución del número y coste de las pensiones del Sistema.'));
      expect(outputData.newsContent!.length,10);
    });



}

