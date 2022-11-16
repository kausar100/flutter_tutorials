// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyWrapper extends StatelessWidget {
  MyWrapper({super.key});

  final Widget _image = Image.asset(
    'assets/images/wallpaper.jpg',
    height: 100,
    width: 100,
    fit: BoxFit.cover,
  );

  @override
  Widget build(BuildContext context) {
    final List<Widget> list = [_image, _image, _image, _image, _image, _image, _image, _image];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap widgets!"),
        centerTitle: true,
      ),
      body: Wrap(
        direction: Axis.horizontal,
        runSpacing: 2, //opposite
        spacing: 2, //same as direction
        children: list
        ),
    );
  }
}
