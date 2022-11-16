// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExpansionTile widgets!"),
        centerTitle: true,
      ),
      body: const ExpansionTile(
        title: Text('See more'),
        textColor: Colors.black,
        iconColor: Colors.amber,
        leading: Icon(Icons.info),
        backgroundColor: Colors.black38,
        children: [
          ListTile(
            title: Text('First'),
          ),
          ListTile(
            title: Text('second'),
          ),
          ListTile(
            title: Text('third'),
          ),
          ListTile(
            title: Text('fourth'),
          ),
        ],
      ),
    );
  }
}
