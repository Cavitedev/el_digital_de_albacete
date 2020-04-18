import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/ParagraphStyledData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/StyledString.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';

import 'SpiderSingleMethods.dart';

void main(){

  SpiderSingleNews spiderSingleNews = SpiderSingleNews
    (url: "https://www.eldigitaldealbacete.com/2020/02/14/el-ministerio-de-industria-adjudica-mas-de-un-millon-de-euros-a-un-proyecto-industrial-de-caudete/");
  ExtraNewsData outputData;

    test('text page to delete inside spans text', () async {

      outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);

      expect((outputData.newsContent[0] as ParagraphStyledData).styledData[0],StyledString(extraStyle:ParagraphStyledData.attributesStyles['strong'] ,text: "La Comisión de Evaluación del Programa de Apoyo a la Inversión Industrial (Reindus), dependiente del Ministerio de Industria, Comercio y Turismo, ha adjudicado de manera provisional 15.830.569 euros a 12 proyectos industriales de Castilla-La Mancha correspondientes a la convocatoria de 2019."));
      expect((outputData.newsContent[11] as ParagraphStyledData).styledData[0],StyledString(text: "–GRAFICAS IMPAR S.L. Inversiones en bienes de equipo para la mejora y ampliación de líneas de producción. Toledo. 154.400 €"));
      expect((outputData.newsContent[14] as ParagraphStyledData).styledData[0],StyledString(text: "–LCN AUTOMOTIVE EQUIPMENT S.A. Plan de inversión nueva línea de producción. Guadalajara. 952.743 €"));
      expect((outputData.newsContent[15] as ParagraphStyledData).styledData[0],StyledString(text: "–ENVIROBAT ESPAÑA S.L. Adecuación, ampliación y mejora de la línea de reciclaje de pilas alcalinas. Azuqueca de Henares (Guadalajara). 310.362 €"));
      expect(outputData.newsContent.length, 21);

//      expect((outputData.newsContent.length),4);
    });


  test('text page to valid good text inside spans', () async {
    spiderSingleNews = SpiderSingleNews
      (url: "https://www.eldigitaldealbacete.com/2020/04/18/ultima-hora-fallece-el-jefe-de-digestivo-del-hospital-de-albacete-por-coronavirus/");
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);

    expect((outputData.newsContent[0] as ParagraphStyledData).styledData[0],StyledString(text: "El Jefe de Digestivo del Complejo Hospitalario de Albacete, Ricardo Pérez Flores, ha fallecido en las últimas horas a consecuencia del coronavirus COVID-19 Este prestigioso doctor tenía 62 años de edad y padecía patologías previas, aunque en la última semana permanecía ingresado en el Hospital de Albacete. El Dr. Pérez Flores ejercía también la docencia en la Facultad de Medicina de la UCLM en Albacete."));
    expect(outputData.newsContent.length, 21);

//      expect((outputData.newsContent.length),4);
  });



}

