// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyFlexbile extends StatelessWidget {
  const MyFlexbile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flexible widgets!'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Flexible(
                flex: 2, //use with fit
                fit: FlexFit.tight,  //same as expanded
                child: Container(
                  height: 50,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'page1',
                      textScaleFactor: 3,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Center(
                    child: Text(
                      'page2',
                      textScaleFactor: 3,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  height: 150,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'page3',
                      textScaleFactor: 3,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  height: 200,
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
