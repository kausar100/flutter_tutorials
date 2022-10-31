import 'package:flutter/material.dart';

class CallbackExample extends StatefulWidget {
  const CallbackExample({Key? key}) : super(key: key);

  @override
  State<CallbackExample> createState() => _CallbackExampleState();
}

class _CallbackExampleState extends State<CallbackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Callback Example'),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: buttonClicked,
          child: Text('Click Me'),
        ),
      ),

    );
  }

  void buttonClicked() {
    print('you click me!');
  }
}
