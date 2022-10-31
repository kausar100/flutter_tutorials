import 'package:flutter/material.dart';

class WrapWidgetExample extends StatelessWidget {
  const WrapWidgetExample({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget'),
        centerTitle: true,
      ),
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child:  WrapWidgetHelper(),
      ),
    );
  }
}

class WrapWidgetHelper extends StatelessWidget {
  const WrapWidgetHelper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
        direction: Axis.horizontal,
        spacing: 4,
        runSpacing: 4,
        children: [
          Container(
            width: 70,
            height: 70,
            color: Colors.red,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.blue,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.black,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.orange,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.green,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.blue,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.black,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.orange,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.green,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.blue,
          )
        ]);
  }
}
