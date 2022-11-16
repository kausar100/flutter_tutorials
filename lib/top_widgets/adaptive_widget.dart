// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyAdaptiveWidget extends StatelessWidget {
  const MyAdaptiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Adaptive widgets!'),
        centerTitle: true,
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Slider.adaptive(value: 1, onChanged: (value) {
          
        },),
        SwitchListTile.adaptive(
          title: Text('Switch list tile'),
          value: true, onChanged: (value) {
          
        },),
          Switch.adaptive(
            
            value: true, onChanged: (value) {
          
        },),

        Icon(Icons.adaptive.share),
        CircularProgressIndicator.adaptive()
      ],),),
    );
  }
}