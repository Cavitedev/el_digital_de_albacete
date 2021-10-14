import 'package:el_digital_de_albacete/Models/SimpleData/news_data.dart';
import 'package:el_digital_de_albacete/tools/number_tools.dart';

class DataOfTable implements NewsData {
  DataOfTable(this.table, this.headerRow) {
    _convertNumericColumnsToDouble();
  }

  List<String> headerRow = <String>[];
  List<List<dynamic>> table = <List<dynamic>>[];


  void _convertNumericColumnsToDouble() {
    final List<List<double>?> columns = <List<double>?>[];
    for (int i = 0; i < table[0].length; i++) {
      columns.add(_checkIfColumnIsDouble(i));
    }
    final List<int> doublesColumnIndexes = <int>[];
    for (int i = 0; i < table[0].length; i++) {
      if (columns[i] != null) {
        doublesColumnIndexes.add(i);
      }
    }
    if (doublesColumnIndexes.isEmpty) {
      return;
    }
    for (int i = 0; i < table.length; i++) {
      final List<dynamic> row = <dynamic>[];
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
    final double? num = NumberTools.toSpanishNumber(table[0][i]);
    if (num == null) {
      return null;
    }
    final List<double> values = <double>[];
    values.add(num);
    for (int rowIndex = 1; rowIndex < table.length; rowIndex++) {
      final double? num2 = NumberTools.toSpanishNumber(table[rowIndex][i]);
      if (num2 == null) {
        return null;
      }
      values.add(num2);
    }
    return values;
  }

  @override
  String toString() {
    return 'DataOfTable{headerRow: $headerRow, table: $table}';
  }
}
