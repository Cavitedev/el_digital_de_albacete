import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/tools/NumberTools.dart';

class DataOfTable implements NewsData {
  List<String> headerRow = <String>[];
  List<List<dynamic>> table = <List<dynamic>>[];

  DataOfTable(List<List<dynamic>> table, List<String> headerRow) {
    this.table = table;
    this.headerRow = headerRow;
    _convertNumericColumnsToDouble();
  }

  void _convertNumericColumnsToDouble() {
    List<List<double>?> columns = <List<double>?>[];
    for (int i = 0; i < table[0].length; i++) {
      columns.add(_checkIfColumnIsDouble(i));
    }
    List<int> doublesColumnIndexes = <int>[];
    for (int i = 0; i < table[0].length; i++) {
      if (columns[i] != null) {
        doublesColumnIndexes.add(i);
      }
    }
    if (doublesColumnIndexes.isEmpty) return;
    for (int i = 0; i < table.length; i++) {
      List<dynamic> row = <dynamic>[];
      for (int columnIndex = 0; columnIndex < table[0].length; columnIndex++) {
        if (doublesColumnIndexes.contains(columnIndex)) {
          row.add(NumberTools.toSpanishNumber(table[i][columnIndex]));
        } else {
          row.add(table[i][columnIndex]);
        }
      }
      table[i] = row;
    }
  }

  List<double>? _checkIfColumnIsDouble(int i) {
    double? num = NumberTools.toSpanishNumber(table[0][i]);
    if (num == null) return null;
    List<double> values = <double>[];
    values.add(num);
    for (int rowIndex = 1; rowIndex < table.length; rowIndex++) {
      double? num2 = NumberTools.toSpanishNumber(table[rowIndex][i]);
      if (num2 == null) return null;
      values.add(num2);
    }
    return values;
  }

  @override
  String toString() {
    return 'DataOfTable{headerRow: $headerRow, table: $table}';
  }
}
