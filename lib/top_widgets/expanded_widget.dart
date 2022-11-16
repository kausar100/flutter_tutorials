// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expanded widgets!'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'page1',
                      textScaleFactor: 3,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: Center(
                    child: Text(
                      'page2',
                      textScaleFactor: 3,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'page3',
                      textScaleFactor: 3,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'page4',
                      textScaleFactor: 3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
