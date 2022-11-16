// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal Bottom sheet'),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
              child: Text('show bottom sheet'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 400,
                      child: Center(
                        child: ElevatedButton(
                            child: Text('close'),
                            onPressed: () => Navigator.pop(context)),
                      ),
                    );
                  },
                );
              })),
    );
  }
}
