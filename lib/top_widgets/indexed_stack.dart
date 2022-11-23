import 'package:flutter/material.dart';

class CustomNavigationBarDemo extends StatefulWidget {


  @override
  _CustomNavigationBarDemoState createState() => _CustomNavigationBarDemoState();
}

class _CustomNavigationBarDemoState extends State<CustomNavigationBarDemo> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        title: Text('Flutter Indexed Stack Demo'),
      ),
      body: Padding(
        child: Column(
          children: <Widget>[
            _stackedContainers(),
            _navigationButtons()
          ],
        ),
        padding: EdgeInsets.all(5.0),
      ),
    );
  }

  Widget _stackedContainers() {
    return Expanded(
      child: IndexedStack(
        index: index,
        children: <Widget>[
          Container(
              child: Center(
                  child: Image.asset("assets/images/first.webp",)
              )
          ),
          Container(
              child: Center(
                  child: Image.asset("assets/images/second.jpeg",)
              )
          ),
          Container(
              child: Center(
                  child: Image.asset("assets/images/wallpaper.jpg",)
              )
          ),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          child: Text('Flutter', style: TextStyle(fontSize: 16.0,color: Colors.white),),
          onPressed: () {
            setState(() {
              index = 0;
            });
          },
        ),
        ElevatedButton(
          child: Text('Aeologic', style: TextStyle(fontSize: 16.0,color: Colors.white),),
          onPressed: () {
            setState(() {
              index = 1;
            });
          },
        ),
        ElevatedButton(
          child: Text('Flutter Devs', style: TextStyle(fontSize: 16.0,color: Colors.white),),
          onPressed: () {
            setState(() {
              index = 2;
            });
          },
        ),
      ],
    );
  }
}