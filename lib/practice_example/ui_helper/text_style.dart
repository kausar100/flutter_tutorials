import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
TextStyle MytextStyle() {
  return const TextStyle(
      fontStyle: FontStyle.italic,
      fontSize: 20,
      wordSpacing: 2,
      fontWeight: FontWeight.bold);
}

InputDecoration textInputDecoration({String? hintText, String? labelText}) {
  return InputDecoration(
    fillColor: Colors.white38,
    filled: true,
    contentPadding: const EdgeInsets.all(20.0),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: Colors.blueGrey),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: Colors.red),
    ),
    hintText: hintText,
    labelText: labelText,
  );
}
