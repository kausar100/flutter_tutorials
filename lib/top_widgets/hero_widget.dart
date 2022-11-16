// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHeroWidget extends StatelessWidget {
  const MyHeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Hero widgets!"),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=>ShowImage())),
          child: ClipRRect(child: Hero(
            tag: 'img',
            child: Image.asset('assets/images/wallpaper.jpg', width: 200,)))),
      ),
    );
  }
}


class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Hero(
            tag: 'img',
            child: Image.asset('assets/images/wallpaper.jpg')),
        ),
      ),

    );
  }
}