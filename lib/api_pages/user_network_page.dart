// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practice/api_pages/call_users_api.dart';
import 'package:flutter_practice/api_pages/single_user.dart';
import 'package:flutter_practice/model/user.dart';

class UserNetworkPage extends StatelessWidget {
  const UserNetworkPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder<List<UserInfo>>(
          future: UsersApi.getUsers(),
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

   Widget buildUsers(List<UserInfo> users) => ListView.builder(
    physics: BouncingScrollPhysics(),
    itemCount: users.length,
    itemBuilder: (context, index) {
      final user = users[index];

      return ListTile(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => UserPage(user: user),
        )),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(user.urlAvatar),
        ),
        title: Text(user.username),
        subtitle: Text(user.email),
      );
    },
  );
}

