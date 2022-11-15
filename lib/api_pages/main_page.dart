import 'package:flutter/material.dart';
import 'package:flutter_practice/api_pages/user_local_page.dart';
import 'package:flutter_practice/api_pages/user_network_page.dart';

class ApiExample extends StatefulWidget {
  const ApiExample({super.key});

  @override
  State<ApiExample> createState() => _ApiExampleState();
}

class _ApiExampleState extends State<ApiExample> {
  final String title = 'Future Builder & Json';

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.teal,
        items: const[
          BottomNavigationBarItem(
            icon: Text('FutureBuilder'),
            label: "Local"
          ),
          BottomNavigationBarItem(
            icon: Text('FutureBuilder'),
            label: "Network"
          ),
        ],
        onTap: (int index) => setState(() => this.index = index),
      ),
      body: buildPages(),
    );
  }
   Widget buildPages() {
    switch (index) {
      case 0:
        return const UserLocalPage();
      case 1:
        return const UserNetworkPage();
      default:
        return Container();
    }
  }
}
