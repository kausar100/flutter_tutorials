import 'package:flutter/material.dart';

class MyAutocompleteExampleApp extends StatelessWidget {
  const MyAutocompleteExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RawAutocomplete Form2'),
        ),
        body: const Center(
          child: MyAutoCTF(),
        ),
      ),
    );
  }
}

class MyAutoCTF extends StatefulWidget {
  const MyAutoCTF({super.key});

  @override
  MyAutoCTFState createState() => MyAutoCTFState();
}

class MyAutoCTFState extends State<MyAutoCTF> {
  static const List<User> _userOptions = <User>[
    User(email: 'a@gmail.com', name: 'kamal'),
    User(email: 'b@gmail.com', name: 'jamal'),
    User(email: 'c@gmail.com', name: 'rahim'),
  ];
  final _formKey = GlobalKey<FormState>();

  User? _autocompleteSelection;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildRawAutocomplete(_userOptions),
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

  RawAutocomplete<User> buildRawAutocomplete(List<User> _userOptions) {
    return RawAutocomplete<User>(
      onSelected: (option) => setState(() {
        _autocompleteSelection = option;
      }),
      optionsBuilder: (TextEditingValue textEditingValue) {
        return _userOptions.where((User option) {
          return option
              .toString()
              .contains(textEditingValue.text.toLowerCase());
        });
      },
      fieldViewBuilder: (BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted) {
        return TextFormField(
          controller: textEditingController,
          focusNode: focusNode,
          onFieldSubmitted: (String value) {
            onFieldSubmitted();
          },
        );
      },
      optionsViewBuilder: (BuildContext context,
          AutocompleteOnSelected<User> onSelected, Iterable<User> options) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            elevation: 4.0,
            child: SizedBox(
              height: 200.0,
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: options.length,
                itemBuilder: (BuildContext context, int index) {
                  final User option = options.elementAt(index);
                  return GestureDetector(
                    onTap: () {
                      onSelected(option);
                    },
                    child: ListTile(
                      title: Text(option.toString()),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

// An example of a type that someone might want to autocomplete a list of.
@immutable
class User {
  const User({
    required this.email,
    required this.name,
  });

  final String email;
  final String name;

  @override
  String toString() {
    return '$name, $email}';
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is User && other.name == name && other.email == email;
  }

  @override
  int get hashCode => Object.hash(email, name);
}
