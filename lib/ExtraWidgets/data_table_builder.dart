import 'package:el_digital_de_albacete/Models/SimpleData/table/data_of_table.dart';
import 'package:flutter/material.dart';

class DataTableBuilder extends StatefulWidget {
  final DataOfTable dataOfTable;

  const DataTableBuilder({Key? key, required this.dataOfTable})
      : super(key: key);

  @override
  _DataTableBuilderState createState() =>
      _DataTableBuilderState();
}

class _DataTableBuilderState extends State<DataTableBuilder> {
  late DataOfTable dataOfTable;

  int index = 0;
  bool asc = true;

  _DataTableBuilderState();

  @override
  void initState() {
    dataOfTable = widget.dataOfTable;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    dataOfTable.table.sort((a, b) =>
        asc ? a[index].compareTo(b[index]) : b[index].compareTo(a[index]));

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
          sortColumnIndex: index,
          sortAscending: asc,
          columns: dataOfTable.headerRow
              .map(
                (row) => DataColumn(
                  onSort: (index, asc) {
                    setState(() {
                      this.index = index;
                      this.asc = asc;
                    });
                  },
                  label: Text(
                    row,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              )
              .toList(),
          rows: dataOfTable.table
              .map((row) => DataRow(
                  cells: row
                      .map(
                        (cell) => DataCell(
                          Text(
                            cell.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )
                      .toList()))
              .toList()),
    );
  }
}
