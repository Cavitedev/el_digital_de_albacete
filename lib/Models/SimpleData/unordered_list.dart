import 'package:el_digital_de_albacete/Models/SimpleData/news_data.dart';

class UnorderedList implements NewsData {
  UnorderedList({required this.elements});
  final List<NewsData> elements;
}
