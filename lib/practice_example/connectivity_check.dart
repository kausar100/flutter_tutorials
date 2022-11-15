import 'dart:async';

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CheckConnectivityExample extends StatefulWidget {
  const CheckConnectivityExample({super.key});

  @override
  State<CheckConnectivityExample> createState() =>
      _CheckConnectivityExampleState();
}

class _CheckConnectivityExampleState extends State<CheckConnectivityExample> {
  StreamSubscription? subscription;

  Future<void> checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      Fluttertoast.showToast(msg: 'you are connected with mobile data');
    } else if (connectivityResult == ConnectivityResult.wifi) {
      Fluttertoast.showToast(msg: 'you are connected with wifi');
    } else {
      Fluttertoast.showToast(msg: 'you are not connected');
    }
  }

  @override
  void initState() {
    super.initState();

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((event) => checkConnection());
  }

  @override
  void dispose() {
    subscription!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Connectivity!'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          checkConnection();
        },
        child: const Icon(Icons.wifi),
      ),
    );
  }
}
