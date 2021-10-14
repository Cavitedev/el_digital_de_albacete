import 'package:el_digital_de_albacete/Models/SimpleData/news_data.dart';

class UnorderedList implements NewsData {
  final List<NewsData> elements;
  UnorderedList({required this.elements});
}
