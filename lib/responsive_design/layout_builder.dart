import 'package:flutter/material.dart';

// LayoutBuilder can determine the maximum
// width and height of a particular widget.

class MyLayoutBuilder extends StatelessWidget {
  const MyLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => SecondPage())),
              child: Text('next')),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return _buildWideContainers();
              } else {
                return _buildNormalContainer();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              flex: 20,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: LayoutBuilder(
                      builder: (context, constraints) => Container(
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            'View 1\n\n' +
                                '[MediaQuery]:\n ${screenSize.width.toStringAsFixed(2)}\n\n' +
                                '[LayoutBuilder]:\n${constraints.maxWidth.toStringAsFixed(2)}',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: LayoutBuilder(
                      builder: (context, constraints) => Container(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'View 2\n\n' +
                                '[MediaQuery]:\n ${screenSize.width.toStringAsFixed(2)}\n\n' +
                                '[LayoutBuilder]:\n${constraints.maxWidth.toStringAsFixed(2)}',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => MyLayoutBuilder())),
                  child: Text('back')),
            ),
          ],
        ),
      ),
    );
  }
}
