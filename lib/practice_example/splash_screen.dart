import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice/practice_example/page_transition.dart';
import 'package:flutter_practice/practice_example/range_slider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreenExample extends StatefulWidget {
  const SplashScreenExample({Key? key}) : super(key: key);

  @override
  State<SplashScreenExample> createState() => _SplashScreenExampleState();
}

class _SplashScreenExampleState extends State<SplashScreenExample> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(
    //   SystemUiMode.leanBack
    // );

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => RangeSliderWidget()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SpinKitFadingCircle(
        color: Colors.white,
        size: 100.0,
      ),
    );
  }
}
