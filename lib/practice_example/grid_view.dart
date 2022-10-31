import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({Key? key}) : super(key: key);

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Widget'),
      ),
      body: GridViewBuilder(),
    );
  }
}

class GridViewBuilder extends StatelessWidget {

  final List<Color> colorsAra = [
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.purple,
    Colors.orange,
    Colors.indigo
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) => Container(color: colorsAra[index]),
      itemCount: colorsAra.length,
    );
  }
}

class GridViewExtent extends StatelessWidget {
  const GridViewExtent({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: [
        Container(color: Colors.orange),
        Container(color: Colors.deepPurpleAccent),
        Container(color: Colors.pink),
        Container(color: Colors.green),
        Container(color: Colors.black),
        Container(color: Colors.red),
      ],
    );
  }
}

class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key});


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: [
        Container(color: Colors.orange),
        Container(color: Colors.deepPurpleAccent),
        Container(color: Colors.pink),
        Container(color: Colors.green),
        Container(color: Colors.black),
        Container(color: Colors.red),
      ],
    );
  }
}
