import 'package:flutter/material.dart';
import 'package:flutter_practice/api_pages/main_page.dart';
import 'package:flutter_practice/bloc_pattern/main.dart';
import 'package:flutter_practice/practice_example/autocomplete_using_package.dart';
import 'package:flutter_practice/practice_example/curved_navigation_bar.dart';
import 'package:flutter_practice/practice_example/autocomplete_user.dart';
import 'package:flutter_practice/practice_example/custom_button.dart';
import 'package:flutter_practice/practice_example/date_time.dart';
import 'package:flutter_practice/practice_example/page_transition.dart';
import 'package:flutter_practice/practice_example/autocomplete_with_form.dart';
import 'package:flutter_practice/practice_example/rich_text.dart';
import 'package:flutter_practice/practice_example/splash_screen.dart';
import 'package:flutter_practice/practice_example/user_input.dart';
import 'package:flutter_practice/practice_example/grid_view.dart';
import 'package:flutter_practice/practice_example/call_back.dart';
import 'package:flutter_practice/practice_example/custom_widget.dart';
import 'package:flutter_practice/practice_example/wrap_widget.dart';
import 'package:flutter_practice/practice_example/theme_demo.dart';
import 'package:flutter_practice/top_widgets/main.dart';

void main() {
  runApp(MaterialApp(
        title: 'Flutter Tutorials',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MyBlocExample(),
        '/user_input': (context) => TextFieldExample(),
        '/date_time': (context) => DateTimeExample(),
        '/grid_view': (context) => GridViewExample(),
        '/call_back': (context) => CallbackExample(),
        '/custom_widget': (context) => CustomWidget(),
        '/custom_button': (context) => RoundedButtonWidget(),
        '/wrap_widget': (context) => WrapWidgetExample(),
        '/richtext_widget': (context) => RichTextWidget(),
        '/page_transition': (context) => PageTransitionExample(),
        '/theme_demo': (context) => ThemeDemoExample(),
        '/curve_navigation': (context) => CurvedNavigationExample(),
      }));
}
