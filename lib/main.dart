import 'package:flutter/material.dart';
import 'package:flutter_practice/api_pages/main_page.dart';
import 'package:flutter_practice/practice_example/curved_navigation_bar.dart';
import 'package:flutter_practice/practice_example/custom_button.dart';
import 'package:flutter_practice/practice_example/date_time.dart';
import 'package:flutter_practice/practice_example/page_transition.dart';
import 'package:flutter_practice/practice_example/rich_text.dart';
import 'package:flutter_practice/practice_example/user_input.dart';
import 'package:flutter_practice/practice_example/grid_view.dart';
import 'package:flutter_practice/practice_example/call_back.dart';
import 'package:flutter_practice/practice_example/custom_widget.dart';
import 'package:flutter_practice/practice_example/wrap_widget.dart';
import 'package:flutter_practice/practice_example/theme_demo.dart';
import 'package/flutter_slidable_test.dart';

void main() {
  runApp(MaterialApp(
        title: 'Flutter Tutorials',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SlidableTest(),
        '/user_input': (context) => const TextFieldExample(),
        '/date_time': (context) => const DateTimeExample(),
        '/grid_view': (context) => const GridViewExample(),
        '/call_back': (context) => const CallbackExample(),
        '/custom_widget': (context) => const CustomWidget(),
        '/custom_button': (context) => const RoundedButtonWidget(),
        '/wrap_widget': (context) => const WrapWidgetExample(),
        '/richtext_widget': (context) => RichTextWidget(),
        '/page_transition': (context) => PageTransitionExample(),
        '/theme_demo': (context) => const ThemeDemoExample(),
        '/curve_navigation': (context) => const CurvedNavigationExample(),
        '/api_example':(context) => const ApiExample()
      }));
}
