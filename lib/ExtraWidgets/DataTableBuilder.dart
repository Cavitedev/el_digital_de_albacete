
import 'package:el_digital_de_albacete/Models/SimpleData/table/DataOfTable.dart';
import 'package:el_digital_de_albacete/tools/NumberTools.dart';
import 'package:flutter/material.dart';

class DataTableBuilder extends StatefulWidget {
  DataOfTable dataOfTable;


  DataTableBuilder({this.dataOfTable});

  @override
  _DataTableBuilderState createState() =>
      _DataTableBuilderState(dataOfTable: dataOfTable);
}

class _DataTableBuilderState extends State<DataTableBuilder> {
  DataOfTable dataOfTable;

  int index = 0;
  bool asc = true;

  _DataTableBuilderState({this.dataOfTable});



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

      if(dataOfTable.doubles.containsIndex(index)){
        dataOfTable.table.sort((a, b) =>
        asc
            ? NumberTools.toSpanishNumber(a[index]).compareTo(NumberTools.toSpanishNumber(b[index]))
            : NumberTools.toSpanishNumber(b[index]).compareTo(NumberTools.toSpanishNumber(a[index])));
      }else{
        dataOfTable.table.sort((a, b) =>
        asc
        ? a[index].compareTo(b[index])
            : b[index].compareTo(a[index]));
        }



    return DataTable(
        sortColumnIndex: index,
        sortAscending: asc,
        columns: dataOfTable.headerRow
            .map(
              (row) =>
              DataColumn(
                onSort: (index, asc) {
                  setState(() {
                    this.index = index;
                    this.asc = asc;
                  });
                },
                label: Text(
                  row,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
        )
            .toList(),
        rows: dataOfTable.table
            .map((row) =>
            DataRow(
                cells: row
                    .map(
                      (cell) =>
                      DataCell(
                        Text(
                          cell,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                )
                    .toList()))
            .toList());
  }
}


