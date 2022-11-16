// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime _dateTime = DateTime(1998);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DatePicker widgets!"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
          textScaleFactor: 4,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: _dateTime,
              firstDate: DateTime(1990),
              lastDate: DateTime(2040));

          if (newDate != null) {
            setState(() {
              _dateTime = newDate;
            });
          }
        },
        child: Icon(Icons.date_range),
      ),
    );
  }
}
