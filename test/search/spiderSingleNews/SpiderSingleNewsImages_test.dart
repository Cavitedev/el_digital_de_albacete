import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';
import 'package:flutter_test/flutter_test.dart';

import 'SpiderSingleMethods.dart';

void main() {
//Web page doesn't work, wait to them to fix it

  test('imagesAppearing', () async {
    SpiderSingleNews spiderSingleNews = SpiderSingleNews(
        url:
            "https://www.eldigitaldealbacete.com/2020/03/06/castilla-la-mancha-intensificara-las-practicas-internacionales-en-las-ensenanzas-de-cerca-de-una-decena-de-familias-de-la-fp-para-el-empleo/");

    ExtraNewsData outputData =
        await SpiderSingleMethods.setUpScrapping(spiderSingleNews);

    expect(
        (outputData.newsContent[2] as MeaningfulString),
        MeaningfulString(
            textTag: TextTag.img,
            string:
                "https://www.eldigitaldeciudadreal.com/wp-content/uploads/2020/03/clausura-la-ii-convencin-nacional-de-delegados-de-la-academia-getbrit_49627050347_o.jpg"));
    expect(
        (outputData.newsContent[5] as MeaningfulString),
        MeaningfulString(
            textTag: TextTag.img,
            string:
                "https://www.eldigitaldeciudadreal.com/wp-content/uploads/2020/03/clausura-la-ii-convencin-nacional-de-delegados-de-la-academia-getbrit_49626318323_o.jpg"));
    expect(
        (outputData.newsContent[8] as MeaningfulString),
        MeaningfulString(
            textTag: TextTag.img,
            string:
                "https://www.eldigitaldeciudadreal.com/wp-content/uploads/2020/03/clausura-la-ii-convencin-nacional-de-delegados-de-la-academia-getbrit_49626305593_o.jpg"));
    expect(
        (outputData.newsContent[12] as MeaningfulString),
        MeaningfulString(
            textTag: TextTag.img,
            string:
                "https://www.eldigitaldeciudadreal.com/wp-content/uploads/2020/03/clausura-la-ii-convencin-nacional-de-delegados-de-la-academia-getbrit_49626296728_o.jpg"));
  });

  test('imagesAppearing', () async {
    SpiderSingleNews spiderSingleNews = SpiderSingleNews(
        url:
            "https://www.eldigitaldealbacete.com/2021/09/10/manzanares-primera-puerta-grande-de-la-feria-taurina-de-albacete-2021/");

    ExtraNewsData outputData =
        await SpiderSingleMethods.setUpScrapping(spiderSingleNews);
    expect(outputData.newsContent.length, 79);

    expect(
        (outputData.newsContent[1] as MeaningfulString),
        MeaningfulString(
            textTag: TextTag.img,
            string:
                "https://www.eldigitaldealbacete.com/wp-content/uploads/2021/09/ANTONIO_FERRERA_MANZANARES_EMILIO_DE_JUSTO_TOROS_10_SEPTIEMBRE_2021_NOTICIAS_ALBACETE-8.jpg"));
    expect(
        (outputData.newsContent[3] as MeaningfulString),
        MeaningfulString(
            textTag: TextTag.img,
            string:
                "https://www.eldigitaldealbacete.com/wp-content/uploads/2021/09/PUBLICO_ANTONIO_FERRERA_MANZANARES_EMILIO_DE_JUSTO_TOROS_10_SEPTIEMBRE_2021_NOTICIAS_ALBACETE-18.jpg"));
    expect(
        (outputData.newsContent[5] as MeaningfulString),
        MeaningfulString(
            textTag: TextTag.img,
            string:
                "https://www.eldigitaldealbacete.com/wp-content/uploads/2021/09/1_ANTONIO_FERRERA_MANZANARES_EMILIO_DE_JUSTO_TOROS_10_SEPTIEMBRE_2021_NOTICIAS_ALBACETE-1.jpg"));
    expect(
        (outputData.newsContent[7] as MeaningfulString),
        MeaningfulString(
            textTag: TextTag.img,
            string:
                "https://www.eldigitaldealbacete.com/wp-content/uploads/2021/09/1_ANTONIO_FERRERA_MANZANARES_EMILIO_DE_JUSTO_TOROS_10_SEPTIEMBRE_2021_NOTICIAS_ALBACETE-2.jpg"));
    expect(
        (outputData.newsContent[77] as MeaningfulString),
        MeaningfulString(
            textTag: TextTag.img,
            string:
                "https://www.eldigitaldealbacete.com/wp-content/uploads/2021/09/6_TORO_ANTONIO_FERRERA_MANZANARES_EMILIO_DE_JUSTO_TOROS_10_SEPTIEMBRE_2021_NOTICIAS_ALBACETE-17.jpg"));
  });
}
