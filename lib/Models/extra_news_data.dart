import 'package:el_digital_de_albacete/Models/SimpleData/news_data.dart';
import 'package:el_digital_de_albacete/Models/simple_news_data.dart';

class ExtraNewsData {
  ExtraNewsData({
    this.newsContent,
    this.simpleNewsData,
  });

  SimpleNewsData? simpleNewsData;
  List<NewsData>? newsContent;
}
