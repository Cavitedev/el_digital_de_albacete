import 'package:el_digital_de_albacete/tools/NumberTools.dart';

class ListsDouble {
  List<int> indexes = List<int>();
  List<List<double>> columns = List<List<double>>();
  List<List<String>> table = List<List<String>>();
  ListsDouble(List<List<String>> table){
    this.table = table;
    for (int i = 0; i<table[0].length;i++) {
      checkAll(i);
    }
  }
  void checkAll(int i){
    double num = NumberTools.toSpanishNumber(table[0][i]);
    if(num != null){
      List<double> values = List<double>();
      values.add(num);
      for(int rowIndex = 1; rowIndex<table.length;rowIndex++){
        double num2 = NumberTools.toSpanishNumber(table[rowIndex][i]);
        if(num2 == null)
          return;
        values.add(num2);
      }


      columns.add(values);


      indexes.add(i);
    }
  }
  bool containsIndex(int checkedIndex) => indexes.contains(checkedIndex);


}