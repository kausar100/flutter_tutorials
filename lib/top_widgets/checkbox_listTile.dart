import 'package:flutter/material.dart';

class MyCheckBoxListTile extends StatefulWidget {
  const MyCheckBoxListTile({super.key});

  @override
  State<MyCheckBoxListTile> createState() => _MyCheckBoxListTileState();
}

class _MyCheckBoxListTileState extends State<MyCheckBoxListTile> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CheckBoxListTile widget")),
      body: Center(
          child: CheckboxListTile(
        tristate: true, //true, false, null
        activeColor: Colors.orangeAccent,
        checkColor: Colors.white,
        controlAffinity: ListTileControlAffinity.leading, //change the position
        tileColor: Colors.black12,
        title: const Text('Checkbox title information'),
        subtitle: const Text('subtitle placed here'),
        value: _isChecked,
        onChanged: (value) => setState(() {
          _isChecked = value;
        }),
      )),
    );
  }
}
