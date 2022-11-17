// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:faker/faker.dart';

/*
 include these two package in your pubspec.yaml file under dependencies

  flutter_typeahead: ^4.1.1 //use for autocompleteformtextfield
  faker: ^2.0.0 //use for generation fake data
 */

class MyFormWithAutocompletion extends StatefulWidget {
  const MyFormWithAutocompletion({super.key});

  @override
  State<MyFormWithAutocompletion> createState() =>
      _MyFormWithAutocompletionState();
}

class _MyFormWithAutocompletionState extends State<MyFormWithAutocompletion> {
  final foodController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Autocomple test!"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildFood(),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    final form = _formKey.currentState!;
                    if (form.validate()) {
                      form.save();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(selectedFood!)));
                    }
                  },
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  child: Text('Submit'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? selectedFood;

  Widget buildFood() => TypeAheadFormField<String?>(
      // hideSuggestionsOnKeyboardHide: false,
      validator: (value) =>
          value != null && value.isEmpty ? 'Please select a Food' : null,
      onSaved: (newValue) => selectedFood = newValue,
      textFieldConfiguration: TextFieldConfiguration(
        controller: foodController,
        decoration: InputDecoration(
          labelText: 'Food',
          border: OutlineInputBorder(),
        ),
      ),
      onSuggestionSelected: (String? suggestion) {
        foodController.text = suggestion!;
      },
      itemBuilder: (context, String? suggestion) => ListTile(
            title: Text(suggestion!),
          ),
      suggestionsCallback: FoodData.getSuggestions);
}

class FoodData {
  static final faker = Faker();

  static final List<String> foods =
      List.generate(20, (index) => faker.food.dish());

  static List<String> getSuggestions(String query) =>
      List.of(foods).where((food) {
        final foodLower = food.toLowerCase();
        final queryLower = query.toLowerCase();

        return foodLower.startsWith(queryLower);

        //replace return statement to fullfill your requirements of 3 character
        // return queryLower.length>=3 && foodLower.contains(queryLower);
      }).toList();
}
