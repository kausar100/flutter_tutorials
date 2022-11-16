// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyOptionMenu extends StatefulWidget {
  const MyOptionMenu({super.key});

  @override
  State<MyOptionMenu> createState() => _MyOptionMenuState();
}

class _MyOptionMenuState extends State<MyOptionMenu> {
  String _selectedOptionMenu = '';
  String page1 = 'First page';
  String page2 = 'Second page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OptionMenu widgets!"),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              setState(() {
                _selectedOptionMenu = value;
              });
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(page1),
                value: page1,
              ),
              PopupMenuItem(
                child: Text(page2),
                value: page2,
              ),
            ],
          )
        ],
      ),
      body: Center(child: Text(_selectedOptionMenu)),
    );
  }
}
