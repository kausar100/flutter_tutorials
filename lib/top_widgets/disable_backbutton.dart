// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BackButtonDisabled extends StatelessWidget {
  const BackButtonDisabled({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back)),
          title: const Text("Try to go back!"),
          centerTitle: true,
          
        ),
        body: Center(),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
