import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class StreamDemo extends StatefulWidget {
  const StreamDemo({super.key});

  @override
  State<StreamDemo> createState() => _StreamDemoState();
}

class _StreamDemoState extends State<StreamDemo> {
  // StreamController<double> streamController = StreamController<double>.broadcast();
  StreamController<int> streamController = StreamController<int>();
  late StreamSubscription<String> streamSubscription;

  @override
  void initState() {
    super.initState();
    getStream();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.green,
              onPressed: () {
                Stream<int> stream = streamController.stream;
                streamSubscription = stream
                    .where((i) => i % 2 == 0)
                    .map((i) => 'String $i')
                    .listen(print);
                // streamSubscription = stream.listen((v) {
                //   debugPrint('value of stream is $v');
                // });

                // streamSubscription = getManualStream().listen((value) {
                //   debugPrint('data: $value');
                // },
                //     onError: (err) =>
                //         debugPrint('caught error ${err.toString()}'));
              },
              child: const Text('subscribe'),
            ),
            // MaterialButton(
            //   color: Colors.blue,
            //   onPressed: () {
            //     DateTime date = DateTime.now();
            //     double second = date.second.toDouble();
            //     streamController.add(second);
            //   },
            //   child: const Text('set stream'),
            // ),
            MaterialButton(
              color: Colors.yellow,
              onPressed: () {
                streamSubscription?.cancel();
              },
              child: const Text('unsubscribe'),
            ),
            FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  //completed with error
                  return Text('Error: ${snapshot.error}');
                } else if (snapshot.hasData) {
                  //completed successfully
                  return Text('Success: ${snapshot.data}');
                } else {
                  //waiting
                  return const CircularProgressIndicator();
                }
              },
            )
          ],
        ),
      ),
    );
  }

  getStream() async {
    int i = 0;
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      streamController.add(i);
      i++;
    }
  }

  Stream<int> getManualStream() async* {
    int i = 0;

    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield ++i;
    }
  }

  getData() {
    final msg = Future.delayed(const Duration(seconds: 2), () => 'no value')
        .then((value) => value)
        .catchError((err) => err);

    return msg;
  }
}
