import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({Key? key}) : super(key: key);

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  var mailText = TextEditingController();
  late String mail = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text input Widget'),
      ),
      body: Center(
          child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: mailText,
                    // enabled: false,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide:
                              const BorderSide(color: Colors.green, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide:
                              const BorderSide(color: Colors.orange, width: 2),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        hintText: 'Enter Email'),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                      suffixText: 'exist!',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye, color: Colors.red),
                      ),
                      prefixIcon: const Icon(Icons.enhanced_encryption,
                          color: Colors.orange),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    mail,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String text = mailText.text.toString();
                        setState(() {
                          mail = text;
                        });
                      },
                      child: const Text('Fetch Mail')),
                ],
              ))),
    );
  }
}
