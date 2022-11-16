// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyStreamBuilder extends StatefulWidget {
  const MyStreamBuilder({super.key});

  @override
  State<MyStreamBuilder> createState() => _MyStreamBuilderState();
}

class _MyStreamBuilderState extends State<MyStreamBuilder> {
  Stream<int> _generatedStream() async* {
    await Future<void>.delayed(Duration(seconds: 2));
    yield 1;
    await Future<void>.delayed(Duration(seconds: 1));
    yield 2;
    // throw 'An error occured';
    await Future<void>.delayed(Duration(seconds: 1));
    yield 3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StreamBuilder widgets!"),
        centerTitle: true,
      ),
      body: Center(
        child: StreamBuilder(
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator.adaptive();
            }

            if (snapshot.hasError) {
              return const Text(
                'Error',
                textScaleFactor: 4,
              );
            } else {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data.toString(),
                  textScaleFactor: 4,
                );
              } else {
                return const Text(
                  'Error',
                  textScaleFactor: 4,
                );
              }
            }
          },
          initialData: 0,
          stream: _generatedStream(),
        ),
      ),
    );
  }
}
