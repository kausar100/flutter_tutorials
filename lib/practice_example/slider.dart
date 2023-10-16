import 'package:flutter/material.dart';

class MySliderTest extends StatefulWidget {
  const MySliderTest({super.key});

  @override
  State<MySliderTest> createState() => _MySliderTestState();
}

class _MySliderTestState extends State<MySliderTest> {
  late double _currentSliderValue = 0.0, _minValue = 0.0, _maxValue = 2.0;
  late int _divisionValue = 1, step = 2;
  bool _sliderInitValue = true;

  @override
  Widget build(BuildContext context) {
    if (_sliderInitValue) {
      _minValue = 0.0;
      step = 2;
      _currentSliderValue = _minValue;
      _maxValue = 2.0;
      _divisionValue = 1;
      _sliderInitValue = false;
    }

    print(
        'min value $_minValue\nmax value $_maxValue\ndivision value $_divisionValue');
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                if (_currentSliderValue > _minValue) {
                  setState(() {
                    _currentSliderValue = _currentSliderValue - step;
                  });
                }
              },
              child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  )),
            ),
            Expanded(
              child: Slider(
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
                value: _currentSliderValue,
                activeColor: const Color(0xFF283771),
                label: _currentSliderValue.round().toString(),
                divisions: _divisionValue,
                inactiveColor: Colors.indigoAccent.shade100,
                min: _minValue,
                max: _maxValue,
              ),
            ),
            InkWell(
              onTap: () {
                if (_currentSliderValue < _maxValue) {
                  setState(() {
                    _currentSliderValue = _currentSliderValue + step;
                  });
                }
              },
              child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
