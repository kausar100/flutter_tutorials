import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpJsonExample extends StatefulWidget {
  const HttpJsonExample({super.key});

  @override
  State<HttpJsonExample> createState() => _HttpJsonExampleState();
}

class _HttpJsonExampleState extends State<HttpJsonExample> {
  var _data;

  Future<void> getData() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/comments');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);

    if (response.statusCode == 200) {
      print('successfully fetch data');
      var jsonResponse = convert.jsonDecode(response.body);
      _data = jsonResponse;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: _data == null ? 0 : _data.length,
            itemBuilder: (context, index) => ExpansionTile(
                  title: Text('${_data[index]['email']}'),
                  subtitle: Text('${_data[index]['name']}'),
                  leading: Text('${_data[index]['id']}'),
                  children: [
                    Text('${_data[index]['body']}'),
                  ],
                )),
      ),
    );
  }
}
