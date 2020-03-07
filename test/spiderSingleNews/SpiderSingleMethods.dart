import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/ParagraphStyledData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/StyledString.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';

class SpiderSingleMethods{



  static Future<ExtraNewsData> setUpScrapping(SpiderSingleNews spiderSingleNews) async {
    Future<ExtraNewsData> newsData = spiderSingleNews.scrapSingleNewsPage();
    ExtraNewsData outputData = await newsData;
    return outputData;
  }

  static void printParagraphs(ExtraNewsData outputData) {
    for(NewsData data in outputData.newsContent){
      if(data is ParagraphStyledData){
        print(data);
        for(StyledString styledString in data.styledData){
          print(styledString.text);
          print(styledString.extraStyle);
        }
      }
    }
  }
  static void printImages(ExtraNewsData outputData){
    for(NewsData data in outputData.newsContent){
    if (data is MeaningfulString){
        print(data.string);
        print(data.textTag);
      }
    }
  }
}