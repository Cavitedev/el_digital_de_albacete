import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';

class ExtraNewsData {
  SimpleNewsData? simpleNewsData;
  List<NewsData>? newsContent;

  ExtraNewsData({
    this.newsContent,
    this.simpleNewsData,
  });
}
