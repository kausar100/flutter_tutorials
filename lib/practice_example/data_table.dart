// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DataTableExample extends StatefulWidget {
  const DataTableExample({super.key});

  @override
  State<DataTableExample> createState() => _DataTableExampleState();
}

class _DataTableExampleState extends State<DataTableExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: Center(
        child: DataTable(
          showBottomBorder: true,
          headingRowColor: MaterialStateProperty.all<Color>(Colors.amber),
          dataRowColor: MaterialStateProperty.all<Color>(Colors.orange),
          columns: [
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Age')),
          DataColumn(label: Text('Home Town')),
        ], rows: [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Samir')),
            DataCell(Text('10')),
            DataCell(Text('Rajshahi')),
          ]),
           DataRow(cells: [
            DataCell(Text('2')),
            DataCell(Text('Jabir')),
            DataCell(Text('10')),
            DataCell(Text('Khulna')),
          ]),
           DataRow(cells: [
            DataCell(Text('3')),
            DataCell(Text('Afiya')),
            DataCell(Text('5')),
            DataCell(Text('Dhaka')),
          ])
        ]),
      ),
    );
  }
}
