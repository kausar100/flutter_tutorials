// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practice/api_pages/call_users_api.dart';
import 'package:flutter_practice/api_pages/single_user.dart';
import 'package:flutter_practice/api_pages/model/user.dart';

class UserLocalPage extends StatelessWidget {
  const UserLocalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<UserInfo>>(
        future: UsersApi.getUsersLocally(context),
        builder: (context, snapshot) {
          final users = snapshot.data;

          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());

            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occurred',
                    style: TextStyle(fontSize: 18),
                  ),
                );
              } else {
                return buildUsers(users!);
              }
          }
        },
      ),
    );
  }

  Widget buildUsers(List<UserInfo> users) => ListView.builder(
        itemCount: users.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => UserPage(user: user))),
            title: Text(user.username),
            subtitle: Text(user.email),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user.urlAvatar),
            ),
          );
        },
      );
}
