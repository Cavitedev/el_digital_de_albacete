import 'package:el_digital_de_albacete/Models/SimpleData/news_data.dart';
import 'package:el_digital_de_albacete/Models/simple_news_data.dart';

class ExtraNewsData {
  SimpleNewsData? simpleNewsData;
  List<NewsData>? newsContent;

  ExtraNewsData({
    this.newsContent,
    this.simpleNewsData,
  });
}
