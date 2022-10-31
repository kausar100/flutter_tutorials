import 'package:flutter/material.dart';
import 'package:flutter_practice/practice_example/ui_helper/text_style.dart';

class RichTextWidget extends StatelessWidget {
  var nameFromPage;

  RichTextWidget({this.nameFromPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: const TextSpan(
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                    children: [
                  TextSpan(text: 'Hello '),
                  TextSpan(
                      text: 'Welcome ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.cyan,
                          fontSize: 25.0)),
                  TextSpan(text: 'back!\n'),
                  TextSpan(text: 'Now '),
                  TextSpan(text: 'learning '),
                  TextSpan(
                      text: 'Flutter',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.orange,
                          fontSize: 29.0)),
                ])),
            SizedBox(height: 100),
            SizedBox(
                width: 200,
                child: Text(
                    '${nameFromPage.text}',
                    style: MytextStyle())),
          ],
        ),
      ),
    );
  }
}
