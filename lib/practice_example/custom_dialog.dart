// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';

class DialogExample extends StatefulWidget {
  const DialogExample({super.key});

  @override
  State<DialogExample> createState() => _DialogExampleState();
}

class _DialogExampleState extends State<DialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                alertDialog(context);
              },
              child: Text('Alert Dialog'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                customDialog(context);
              },
              child: Text('Custom Dialog'),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> alertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: ((context) => AlertDialog(
              title: Text("Alert Dialog"),
              contentPadding: EdgeInsets.all(20.0),
              content: Text('Are you sure you want to cancel this!'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Yes'))
              ],
            )));
  }

  Future<dynamic> customDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: ((context) => Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Custom Dialog",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              'Id id ea culpa nisi sint mollit sit qui voluptate. Lorem incididunt ut proident non duis eiusmod sint officia amet sit incididunt. Reprehenderit anim id ad nostrud minim ea voluptate cillum est ipsum. Non velit magna ad et.')
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -50,
                    child: CircleAvatar(
                    radius: 50,
                    child: Image.asset('assets/images/profile.png'),
                  ), )               
                ],
              ),
            )));
  }
}
