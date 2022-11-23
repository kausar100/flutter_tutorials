import 'dart:ffi';

import 'package:flutter/material.dart';

// You can use the widget to size the child to a specific aspect ratio.
// This widget first tries the largest width permitted by the layout constraints
// and then decides the height by applying the given aspect ratio to the width.

class MyAspectRatio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(child: AspectRatioWidget()),
      ),
    );
  }
}

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      width: double.infinity,
      height: 100.0,
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
