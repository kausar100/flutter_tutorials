// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyChoiceChip extends StatefulWidget {
  const MyChoiceChip({super.key});

  @override
  State<MyChoiceChip> createState() => _MyChoiceChipState();
}

class _MyChoiceChipState extends State<MyChoiceChip> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChoiceChip widgets!"),
        centerTitle: true,
      ),
      body: Center(
        child: ChoiceChip(
          selected: _isSelected,
          avatar: Image.asset('assets/images/profile.png'),
          label: const Text('Choice chip'),
          onSelected: (value) {
            setState(() {
              _isSelected = value;
            });
          },
        ),
      ),
    );
  }
}
