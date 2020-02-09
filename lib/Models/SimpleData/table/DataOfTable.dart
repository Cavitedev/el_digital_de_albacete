import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/table/ListsDouble.dart';

class DataOfTable implements NewsData{
  List<String> headerRow = List<String>();
  List<List<String>> table = List<List<String>>();
  ListsDouble doubles;
  DataOfTable(List<List<String>> table, List<String> headerRow){
    this.table = table;
    this.headerRow= headerRow;
    doubles = ListsDouble(table);
  }
}