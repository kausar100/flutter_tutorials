// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyVisibility extends StatefulWidget {
  const MyVisibility({super.key});

  @override
  State<MyVisibility> createState() => _MyVisibilityState();
}

class _MyVisibilityState extends State<MyVisibility> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visibility widgets!'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          Switch.adaptive(
            value: _isVisible,
            onChanged: (value) {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Visibility(
              visible: !_isVisible,
              child: Text('switch on to see the below image')),
            Visibility(
              visible: _isVisible,
              child: Image.asset('assets/images/wallpaper.jpg')),
              Visibility(
                visible: _isVisible,
                child: Text('switch off to hide the above image')),
          ],
        ),
      ),
    );
  }
}
