// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 0;
  List<Widget> body = [Icon(Icons.home), Icon(Icons.menu), Icon(Icons.person)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: body[0], label: 'Home'),
            BottomNavigationBarItem(icon: body[1], label: 'Menu'),
            BottomNavigationBarItem(icon: body[2], label: 'Profile'),
          ]),
    );
  }
}
