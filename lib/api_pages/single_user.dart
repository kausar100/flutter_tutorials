// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practice/model/user.dart';

class UserPage extends StatelessWidget {
  final UserInfo user;

  const UserPage({super.key, 
    required this.user,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(user.username),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(user.urlAvatar),
                radius: 80,
              ),
              const SizedBox(height: 40),
              Text(
                user.username,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 64),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  backgroundColor: Colors.teal,
                ),
                child: Text(
                  'Send Email',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      );
}
