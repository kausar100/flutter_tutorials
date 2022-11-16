// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Searchbar widgets!"),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomeSearchDelegate());
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Center(),
    );
  }
}

class CustomeSearchDelegate extends SearchDelegate {
  List<String> searchItems = [
    'Apple',
    'Banana',
    'Coconut',
    'Watermelons',
    'Oranges',
    'Blueberries',
    'Strawberries',
    'Raspberries'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: (() => query = ''), icon: Icon(Icons.clear))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null), icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchItems) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );
    });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchItems) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
      var result = matchQuery[index];
      return ListTile(
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result))),
        title: Text(result),
      );
    });
  }
}
