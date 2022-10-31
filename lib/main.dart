import 'package:flutter/material.dart';
import 'package:flutter_practice/practice_example/date_time.dart';
import 'package:flutter_practice/practice_example/user_input.dart';
import 'package:flutter_practice/practice_example/grid_view.dart';
import 'package:flutter_practice/practice_example/call_back.dart';
import 'package:flutter_practice/practice_example/custom_widget.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/custom_widget',
      routes: {
        '/user_input': (context) => TextFieldExample(),
        '/date_time': (context) => DateTimeExample(),
        '/grid_view': (context) => GridViewExample(),
        '/call_back': (context) => CallbackExample(),
        '/custom_widget' : (context) => CustomWidget(),

      }));
}
