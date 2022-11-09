// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_practice/practice_example/ui_helper/text_style.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CurvedNavigationExample extends StatefulWidget {
  const CurvedNavigationExample({super.key});

  @override
  State<CurvedNavigationExample> createState() =>
      _CurvedNavigationExampleState();
}

class _CurvedNavigationExampleState extends State<CurvedNavigationExample> {
  List<Color> _bgColor = [Colors.red, Colors.black, Colors.blue];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curved Navigation Widget'),
        centerTitle: true,
      ),
      body: Container(color: _bgColor[_index]),
      bottomNavigationBar: CurvedNavigationBar(
          //didn't work for greater than 3 icons
          index: _index,
          buttonBackgroundColor: Colors.amber,
          backgroundColor: _bgColor[_index],
          animationCurve: Curves.easeInCubic,
          animationDuration: const Duration(milliseconds: 600),
          onTap: ((value) {
            setState(() {
              _index = value;
            });
          }),
          items: const [
            Icon(
              Icons.camera,
            ),
            Icon(
              Icons.audiotrack,
            ),
            Icon(
              Icons.video_call,
            ),
          ]),
    );
  }
}
