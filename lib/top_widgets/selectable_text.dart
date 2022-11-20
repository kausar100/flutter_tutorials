import 'package:flutter/material.dart';

class MySelectableText extends StatefulWidget {
  const MySelectableText({super.key});

  @override
  State<MySelectableText> createState() => _MySelectableTextState();
}

class _MySelectableTextState extends State<MySelectableText> {
  String _selectedText = '';
  final String _selectableText = 'This is a selectable text';

  final TextStyle _styleBLue = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue);
  final TextStyle _style =
      const TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Selectable Text")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _selectedText,
            style: _styleBLue,
          ),
          TextSelectionTheme(
            //change the selection color
            data: const TextSelectionThemeData(selectionColor: Colors.amber),
            child: SelectableText(
              _selectableText,
              style: _style,
              onSelectionChanged: (selection, cause) => setState(() {
                _selectedText =
                    _selectableText.substring(selection.start, selection.end);
              }),
            ),
          ),
        ],
      )),
    );
  }
}
