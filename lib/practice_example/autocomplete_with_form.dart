import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/practice_example/ui_helper/text_style.dart';

class AutocompleteExampleApp extends StatelessWidget {
  const AutocompleteExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RawAutocomplete Form'),
        ),
        body: const Center(
          child: AutocompleteFormExample(),
        ),
      ),
    );
  }
}

final faker = Faker();
final List<String> foodOptions =
    List.generate(100, (index) => faker.food.dish());

class AutocompleteFormExample extends StatefulWidget {
  const AutocompleteFormExample({super.key});

  @override
  AutocompleteFormExampleState createState() => AutocompleteFormExampleState();
}

class AutocompleteFormExampleState extends State<AutocompleteFormExample> {
  final _formKey = GlobalKey<FormState>();

  String? _autocompleteSelection;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildRawAutocomplete(),
          ElevatedButton(
            onPressed: () {
              FocusScope.of(context).unfocus();
              if (!_formKey.currentState!.validate()) {
                return;
              }
              showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Successfully submitted'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[
                          Text('RawAutocomplete: $_autocompleteSelection'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Ok'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }

  Autocomplete<String> buildRawAutocomplete() {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        final query = textEditingValue.text;
        if (query == '') {
          return const Iterable<String>.empty();
        }

        return foodOptions.where((String option) {
          return option.toLowerCase().startsWith(query.toLowerCase());
          // return query.length >= 3 &&
          //     option.toLowerCase().startsWith(query.toLowerCase());
        });
      },
      onSelected: (String selection) {
        setState(() {
          _autocompleteSelection = selection;
        });
      },
      fieldViewBuilder: (BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            controller: textEditingController,
            decoration: textInputDecoration(hintText: 'Enter a food name'),
            focusNode: focusNode,
            onFieldSubmitted: (String value) {
              onFieldSubmitted();
            },
            validator: (String? value) {
              if (!foodOptions.contains(value)) {
                return 'Nothing selected.';
              }
              return null;
            },
          ),
        );
      },
      optionsViewBuilder: (BuildContext context,
          AutocompleteOnSelected<String> onSelected, Iterable<String> options) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    final String option = options.elementAt(index);
                    return ListTile(
                      onTap: () {
                        onSelected(option);
                      },
                      title: Text(option),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
