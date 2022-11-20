// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("Drawer widgets!"),
        centerTitle: true,
      ),
      drawer: Drawer(

        elevation: 5.0,
        child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader( //header of drawer
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
                child: Text(
                  'My Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile( //menu item of Drawer
                leading: Icon(Icons.home),
                title: Text('Home Page'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('My Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Account Settings'),
              ),
              ListTile( 
                onTap:(){
                  if(_scaffoldKey.currentState!.isDrawerOpen){ //check if drawer is open
                      Navigator.pop(context); //context of drawer is different 
                  }
                },
                leading:Icon(Icons.close),
                title: Text("Close Drawer")
              )
            ],
          ),
      ),
         body: Center( //content body on scaffold
            child: ElevatedButton( 
              onPressed: (){
                if(!_scaffoldKey.currentState!.isDrawerOpen){ //check if drawer is closed
                     _scaffoldKey.currentState!.openDrawer(); //open drawer
                }
              },
              child: Text("OPEN DRAWER"),
            )
        )
    );
  }
}
