import 'package:el_digital_de_albacete/Models/SimpleData/meaningful_string.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/paragraph_styled_data.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/styled_string.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/unordered_list.dart';
import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Spider/spider_single_news.dart';
import 'package:flutter_test/flutter_test.dart';

import 'spider_single_methods.dart';

void main() {
  SpiderSingleNews spiderSingleNews = SpiderSingleNews(
      url:
          'https://www.eldigitaldealbacete.com/2020/03/15/el-sescam-cancela-las-citas-no-urgentes-con-el-medico-de-cabecera-pediatras-y-de-enfermeria-incluidas-las-analiticas/');
  ExtraNewsData outputData;
  test('text page gets unordered list when h3', () async {
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);

    expect(
        (outputData.newsContent![0] as UnorderedList).elements[0],
        MeaningfulString(
            textTag: TextTag.h4,
            string:
                'En Atención Primaria, los centros permanecerán abiertos para atender la demanda urgente, quedando suspendida toda la actividad previamente programada.'));
    expect(outputData.newsContent!.length, 12);
  });

  test('Page gets unordered text when there are not tags', () async {
    spiderSingleNews = SpiderSingleNews(
        url:
            'https://www.eldigitaldealbacete.com/2020/04/18/mas-de-3-000-personas-atendidas-por-cruz-roja-durante-la-pandemia/');
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);

    expect(
        ((outputData.newsContent![7] as UnorderedList).elements[0]
                as ParagraphStyledData)
            .styledData[0],
        const StyledString(
            text:
                '16 instalaciones hospitalarias temporales en colaboración con las administraciones públicas para ayudar a descongestionar el sistema sanitario.'));
    expect(outputData.newsContent!.length, 12);
  });

  test('Page gets unordered text with strong tag', () async {
    spiderSingleNews = SpiderSingleNews(
        url:
            'https://www.eldigitaldealbacete.com/2021/10/13/cabanero-subraya-el-enorme-privilegio-que-es-para-la-diputacion-de-albacete-formar-parte-del-programa-uclm-rural/');
    outputData = await SpiderSingleMethods.setUpScrapping(spiderSingleNews);

    final String jointText = ((outputData.newsContent![0] as UnorderedList)
            .elements[0] as ParagraphStyledData)
        .styledData
        .fold('', (previousValue, element) => previousValue + element.text!);

    expect(jointText,
        'Merced al apoyo económico de 50.000 € aportados por la institución provincial albacetense, la primera edición de esta novedosa iniciativa habrá permitido, a su término, que 14 estudiantes de la Universidad de Castilla-La Mancha, procedentes de múltiples disciplinas, hayan realizado sus prácticas laborales en grandes empresas, PYMES, microempresas, empresas de la economía social, entidades del tercer sector y otras instituciones públicas y privadas de localidades de menos de 5.000 habitantes del territorio albacetense');

    expect(
        ((outputData.newsContent![0] as UnorderedList).elements[0]
                as ParagraphStyledData)
            .styledData[0]
            .extraStyle,
        ParagraphStyledData.attributesStyles['strong']);
    expect(outputData.newsContent!.length, 21);
  });
}
