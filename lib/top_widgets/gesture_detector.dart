import 'package:flutter/material.dart';

class MyGestureDetector extends StatefulWidget {
  const MyGestureDetector({super.key});

  @override
  State<MyGestureDetector> createState() => _MyGestureDetectorState();
}

class _MyGestureDetectorState extends State<MyGestureDetector> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gesture Detector")),
      body: Center(
          child: GestureDetector(
        onTap: () => setState(() {
          _counter++;
        }),
        child: Tooltip(
          message: '-------click inside blue square-----\nto see the effect of gesture detector',
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(child: Text(_counter.toString(), textScaleFactor: 5,), ),
          ),
        ),
      )),
    );
  }
}
