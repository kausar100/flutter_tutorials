// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  const MyAnimation({super.key});

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fade animation widgets!'),
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
        child: AnimatedCrossFade(
            firstChild: Tooltip(
                message: 'Toggle Switch to see the effect',
                child: Image.asset(
                  'assets/images/profile.png',
                  width: 300,
                )),
            secondChild: Tooltip(
                message: 'Toggle Switch to see the effect',
                child: Image.asset(
                  'assets/images/wallpaper.jpg',
                  width: 300,
                )),
            crossFadeState: _isVisible
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1)),
      ),
    );
  }
}
