// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({super.key});

  @override
  State<MyTimePicker> createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  TimeOfDay? time = TimeOfDay(hour: 12, minute: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TimePicker widgets!"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '${time!.hour.toString()}:${time!.minute.toString()}',
          textScaleFactor: 4,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          TimeOfDay? newTime =
              await showTimePicker(context: context, initialTime: time!);
          if (newTime != null) {
            setState(() {
              time = newTime;
            });
          }
        },
        child: Icon(Icons.access_time_outlined),
      ),
    );
  }
}
