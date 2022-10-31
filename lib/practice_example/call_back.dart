import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        title: const Text('Callback Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PositionedWidget(),
            const SizedBox(
              height: 20,
            ),
            const FaIcon(
              //fontawesome widget example
              FontAwesomeIcons.googleDrive,
              color: Colors.red,
              size: 50,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: buttonClicked,
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }

  void buttonClicked() {
    print('you click me!');
  }
}

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //positioned widget example
      width: 600,
      height: 400,
      color: Colors.blueGrey,
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: 150,
            left: 150,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
