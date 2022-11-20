// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyInteractiveViewer extends StatefulWidget {
  const MyInteractiveViewer({super.key});

  @override
  State<MyInteractiveViewer> createState() => _MyInteractiveViewerState();
}

class _MyInteractiveViewerState extends State<MyInteractiveViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Interactive viewer")),
      body: WithImage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => FloatViewer())),
        child: Icon(Icons.camera),
      ),
    );
  }
}

class WithImage extends StatelessWidget {
  const WithImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InteractiveViewer(
      maxScale: 5,
      child: Image.asset('assets/images/wallpaper.jpg'),
    ));
  }
}

class FloatViewer extends StatelessWidget {
  const FloatViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(double.infinity),
          child: Scaffold(
            appBar: AppBar(title: Text('Floating!')),
          )),
    );
  }
}
