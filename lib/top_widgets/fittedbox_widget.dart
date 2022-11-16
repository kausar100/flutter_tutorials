// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyFittedBox extends StatefulWidget {
  const MyFittedBox({super.key});

  @override
  State<MyFittedBox> createState() => _MyFittedBoxState();
}

class _MyFittedBoxState extends State<MyFittedBox> {
  double _containerWidth = 100;
  double _containerHeight = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FittedBox widgets!"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: _containerHeight,
              width: _containerWidth,
              color: Colors.red,
              child: FittedBox(
                  child: Text(
                'Flutter fitted box',
                textScaleFactor: 10,
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _containerWidth += 50;
                    });
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.add),
                        Text('width'),
                      ]),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_containerWidth > 150) _containerWidth -= 50;
                    });
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.remove),
                        Text('width'),
                      ]),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _containerHeight += 50;
                    });
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.add),
                        Text('height'),
                      ]),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_containerHeight > 100) _containerHeight -= 50;
                    });
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.remove),
                        Text('height'),
                      ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
