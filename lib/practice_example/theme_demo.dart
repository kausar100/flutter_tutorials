import 'package:flutter/material.dart';
import 'package:flutter_practice/practice_example/ui_helper/add_space.dart';
import 'package:flutter_practice/practice_example/ui_helper/theme/theme_constants.dart';
import 'package:flutter_practice/practice_example/ui_helper/theme/theme_manager.dart';

class ThemeDemoExample extends StatefulWidget {
  const ThemeDemoExample({Key? key}) : super(key: key);

  @override
  State<ThemeDemoExample> createState() => _ThemeDemoExampleState();
}

ThemeManager _themeManager = ThemeManager();

class _ThemeDemoExampleState extends State<ThemeDemoExample> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    bool isDark = (Theme.of(context).brightness) == Brightness.dark;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Theme Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Theme App'),
          elevation: 0,
          actions: [
            Switch(
                value: (_themeManager.themeMode) == ThemeMode.dark,
                onChanged: (newValue) {
                  _themeManager.toggleTheme(newValue);
                })
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.png'),
                      radius: 50),
                  addVerticalSpace(20),
                  Text(
                    'Md. Golam Kausar',
                    style: textTheme.headline4?.copyWith(
                      color: isDark? Colors.white:Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  addVerticalSpace(20),
                  Text('kausar.cse16@gmail.com', style: textTheme.subtitle1?.copyWith(
                    color: isDark? Colors.white:Colors.black,
                  )),
                  addVerticalSpace(30),
                  TextField(),
                  addVerticalSpace(20),
                  ElevatedButton(onPressed: () {}, child: Text('Click Here'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
