import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';

class DataOfTable implements NewsData{
  List<String> headerRow = List<String>();
  List<List<String>> table = List<List<String>>();
  DataOfTable({this.table, this.headerRow});
}