import 'dart:convert' as convert;

import 'package:flutter/cupertino.dart';
import 'package:flutter_practice/api_pages/model/user.dart';
import 'package:http/http.dart' as http;

class UsersApi {
  //load json data from local file
  static Future<List<UserInfo>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/files/users.json');

    final body = convert.jsonDecode(data) as List;

    return body.map((json) => UserInfo.userFromJson(json)).toList();

    // return body.map<UserInfo>(UserInfo.userFromJson).toList();
  }

  //get json data from network
  static Future<List<UserInfo>> getUsers() async {
    final url = Uri.https('mocki.io','/v1/41148584-3336-4aae-a3c9-819ed3a4b59a');

    final response = await http.get(url);

    var body = convert.jsonDecode(response.body) as List;
    
    return body.map((json) => UserInfo.userFromJson(json)).toList();
  }
}
