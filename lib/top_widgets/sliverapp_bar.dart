// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MySliver extends StatelessWidget {
  const MySliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            // floating: true,
            // snap: true,
            title: Text('Sliver Flutter'),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Name'),
              centerTitle: true,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Text(
              'KAUSAR',
              style: TextStyle(fontSize: 600),
            )
          ]))
        ],
      ),
    );
  }
}
