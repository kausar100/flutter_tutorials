// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper widget'),
      ),
      body: Center(
        child: Stepper(
            onStepContinue: () {
              if (_currentStep != 2) {
                setState(() {
                  _currentStep++;
                });
              }
            },
            onStepCancel: () {
              if (_currentStep != 0) {
                setState(() {
                  _currentStep--;
                });
              }
            },
            onStepTapped: (value) {
              setState(() {
                _currentStep = value;
              });
            },
            currentStep: _currentStep,
            steps: const [
              Step(title: Text('step 1'), content: Text('step1 information')),
              Step(title: Text('step 2'), content: Text('step2 information')),
              Step(title: Text('step 3'), content: Text('step3 information')),
            ]),
      ),
    );
  }
}
