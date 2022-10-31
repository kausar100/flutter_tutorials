import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget'),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          Header(),
          BodyWidget(),
          FooterWidget(),
        ],
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          color: Colors.green,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                    ),
                  )),
        ));
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Container(
          color: Colors.orange,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                ),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                title: Text('Name'),
                subtitle: Text('Email address'),
              ),
            ),
          ),
        ));
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          color: Colors.blue,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                ),
              ),
            ),
          ),
        ));
  }
}
