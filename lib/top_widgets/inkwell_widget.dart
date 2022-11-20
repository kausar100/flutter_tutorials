import 'package:flutter/material.dart';

class MyInkWell extends StatefulWidget {
  const MyInkWell({super.key});

  @override
  State<MyInkWell> createState() => _MyInkWellState();
}

class _MyInkWellState extends State<MyInkWell> {
  Color boxColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("InkWell widget")),
      body: Center(
          child: InkWell(
        onDoubleTap: () => setState(() {
          boxColor = Colors.red;
        }),
        onLongPress: () => setState(() {
          boxColor = Colors.yellow;
        }),
        onTap: () => setState(() {
          boxColor = Colors.blue;
        }),
        child: Ink(
          height: 200,
          width: 200,
          color: boxColor,
          child: const Center(
            child: FlutterLogo(
              size: 150,
            ),
          ),
        ),
      )),
    );
  }
}
