import 'package:flutter/material.dart';
import 'package:flutter_practice/practice_example/ui_helper/rounded_button.dart';
import 'package:flutter_practice/practice_example/ui_helper/text_style.dart';

class RoundedButtonWidget extends StatefulWidget {
  const RoundedButtonWidget({super.key});

  @override
  State<RoundedButtonWidget> createState() => _RoundedButtonWidgetState();
}

class _RoundedButtonWidgetState extends State<RoundedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Button Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 50,
              child: CustomRoundedButton(
                btnText: 'click',
                callback: () {
                  print('you click on first button!');
                },
                textStyle: MytextStyle(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: CustomRoundedButton(
                icon: Icon(Icons.ads_click),
                btnText: 'click',
                callback: () {
                  print('you click on second button!');
                },
                textStyle: MytextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
