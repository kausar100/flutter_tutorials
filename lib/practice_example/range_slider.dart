import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_practice/practice_example/rich_text.dart';

class RangeSliderWidget extends StatefulWidget {
  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues rangeValues = const RangeValues(0, 10);
  late String minValue= rangeValues.start.toString();
  late String maxValue=rangeValues.end.toString();

  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels =
        RangeLabels(rangeValues.start.toString(), rangeValues.end.toString());


    return Scaffold(
        appBar: AppBar(
          title: const Text('Range Slider Example'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Min value : $minValue'),
                  Text('Max value : $maxValue'),
                ],
              ),

              RangeSlider(
                onChanged: (newValue) {
                  rangeValues = newValue;
                  minValue = newValue.start.toString();
                  maxValue = newValue.end.toString();

                  setState(() {});
                },
                values: rangeValues,
                activeColor: Colors.blue,
                labels: rangeLabels,
                divisions: 10,
                inactiveColor: Colors.black,
                max: 10, // by default min-0 max-1
              ),
            ],
          ),
        ));
  }
}
