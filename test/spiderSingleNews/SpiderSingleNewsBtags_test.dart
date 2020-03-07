import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/ParagraphStyledData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/StyledString.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';

import 'SpiderSingleMethods.dart';

void main(){

  SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: "https://www.eldigitaldealbacete.com/2020/03/03/desciende-el-paro-en-la-provincia-de-albacete/");
  ExtraNewsData outputData;
  setUp(() async{
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
  });

    test('text page b attributes', (){



      expect((outputData.newsContent[0] as ParagraphStyledData).styledData[0],StyledString(text: "/Marta López/"));
      expect((outputData.newsContent[1] as ParagraphStyledData).styledData[0],StyledString(text:"El número de parados registrados en las oficinas de los servicios públicos de empleo en la provincia de Albacete se situó al finalizar el mes de febrero de 2020 en "));
      expect((outputData.newsContent[1] as ParagraphStyledData).styledData[1],StyledString(text:"34.478 ",extraStyle: ParagraphStyledData.attributesStyles['b']));
      expect((outputData.newsContent[1] as ParagraphStyledData).styledData[2],StyledString(text:"personas, tras bajar en 1.046 desempleados con respecto al mes anterior, cuando cerraba con "));
      expect((outputData.newsContent[1] as ParagraphStyledData).styledData[3],StyledString(text:"35.524 ",extraStyle: ParagraphStyledData.attributesStyles['b']));
      expect((outputData.newsContent[1] as ParagraphStyledData).styledData[4],StyledString(text:"parados."));

      expect((outputData.newsContent[2] as ParagraphStyledData).styledData[0],StyledString(text: "El número de desempleados registrado en este mes del año ha "));
      expect((outputData.newsContent[2] as ParagraphStyledData).styledData[1],StyledString(text:"descendido",extraStyle: ParagraphStyledData.attributesStyles['b']));
      expect((outputData.newsContent[2] as ParagraphStyledData).styledData[2],StyledString(text: " en todos los sectores. De este modo en el sector de la Agricultura se han registrado 61 desempleados menos, mientras que en Industria, han sido una disminución total de 32, en Construcción 89 y en el sector Servicios y el Colectivo Sin empleo Anterior se han registrado 852 y 712 parados menos respectivamente."));

      expect((outputData.newsContent[3] as ParagraphStyledData).styledData[0],StyledString(text: "Del mismo modo, "));
      expect((outputData.newsContent[3] as ParagraphStyledData).styledData[1],StyledString(text:"desciende ",extraStyle: ParagraphStyledData.attributesStyles['b']));
      expect((outputData.newsContent[3] as ParagraphStyledData).styledData[2],StyledString(text: "el número de parados registrado en febrero en la provincia con respecto al mismo mes del año anterior en 238 desempleados, ya que esta cifra en 2019 se situaba en 34.716 personas en paro."));
    });



}

