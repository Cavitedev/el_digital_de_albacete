import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:meta/meta.dart';

class UnorderedList implements NewsData {

  final List<MeaningfulString> elements;
  UnorderedList({@required this.elements});
}