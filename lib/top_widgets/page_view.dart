// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageView widgets!'),
          centerTitle: true,
        ),
        body: PageView(
          children: [
            Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'page1',
                  textScaleFactor: 3,
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: Center(
                child: Text(
                  'page2',
                  textScaleFactor: 3,
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: Center(
                child: Text(
                  'page3',
                  textScaleFactor: 3,
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  'page4',
                  textScaleFactor: 3,
                ),
              ),
            ),
          ],
        ));
  }
}
