import 'package:flutter/material.dart';
import 'package:flutter_practice/practice_example/rich_text.dart';

class PageTransitionExample extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page Transition Example'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  hintText:'Enter some text here...'
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RichTextWidget(nameFromPage: textController,)));
                },
                icon: Icon(Icons.redo_outlined),
                label: Text('Go to another page'))
          ]),
        ));
  }
}
