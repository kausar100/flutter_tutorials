import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeExample extends StatefulWidget {
  const DateTimeExample({Key? key}) : super(key: key);

  @override
  State<DateTimeExample> createState() => _DateTimeExampleState();
}

class _DateTimeExampleState extends State<DateTimeExample> {
  var now = DateTime.now();
  var pickedDate, pickedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Time Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${pickedDate}', style: const TextStyle(
              fontSize: 25,
            ),),
            ElevatedButton(
                onPressed: () async{
                  DateTime? datePicked = await showDatePicker(
                      context: context,
                      initialDate: now,
                      firstDate: DateTime(1991),
                      lastDate: DateTime(2050));

                  if(datePicked!=null){
                    setState(() {
                      pickedDate = DateFormat('yMMMMEEEEd').format(datePicked);
                    });
                  }
                },
                child: Text('show datepicker')),
            SizedBox(height: 40),

            Text('${pickedTime}', style: const TextStyle(
              fontSize: 25,
            ),),
            ElevatedButton(
                onPressed: () async{
                  TimeOfDay? timePicked = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.dialOnly,
                  );
                  if(timePicked!=null){
                    setState(() {
                      pickedTime = timePicked.format(context);
                    });
                  }

                  },
                  child: Text('show timepicker')),
            SizedBox(height: 40),

            Text(
              '${DateFormat('yMMMMEEEEd').format(now)}',
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    now = DateTime.now();
                  });
                },
                child: Text('current time')),
          ],
        ),
      ),
    );
  }
}
