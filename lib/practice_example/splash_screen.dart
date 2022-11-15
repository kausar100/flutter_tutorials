import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_practice/api_pages/main_page.dart';
import 'package:flutter_practice/practice_example/http_json.dart';
import 'package:flutter_practice/provider_example/single_provider.dart';
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
          context, MaterialPageRoute(builder: (_) => ProviderMainPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body:  Center(child: CircularProgressIndicator()),
      // body: SpinKitFadingCircle(
      //   color: Colors.white,
      //   size: 100.0,
      // ),
    );
  }
}
