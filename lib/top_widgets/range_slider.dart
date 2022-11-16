// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues rangeValues = const RangeValues(0.3, 0.5);
  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels =
        RangeLabels(rangeValues.start.toString(), rangeValues.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Range Slider widgets!'),
        centerTitle: true,
      ),
      body: Center(
          child: RangeSlider(
        values: rangeValues,
        divisions: 10,
        labels: rangeLabels,
        onChanged: (value) {
          setState(() {
            rangeValues = value;
          });
        },
      )),
    );
  }
}
