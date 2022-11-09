import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice/practice_example/curved_navigation_bar.dart';
import 'package:flutter_practice/practice_example/custom_dialog.dart';
import 'package:flutter_practice/practice_example/data_table.dart';
import 'package:flutter_practice/practice_example/http_json.dart';
import 'package:flutter_practice/practice_example/navigation_rail.dart';
import 'package:flutter_practice/practice_example/page_transition.dart';
import 'package:flutter_practice/practice_example/range_slider.dart';
import 'package:flutter_practice/practice_example/shared_preferences.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_practice/practice_example/theme_demo.dart';

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
          context, MaterialPageRoute(builder: (_) => SharedPreferencesPlugin()));
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
