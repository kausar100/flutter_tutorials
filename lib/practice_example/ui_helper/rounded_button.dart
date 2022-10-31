import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  late String btnText;

  late Icon? icon;

  late Color? bgColor;

  late VoidCallback? callback;

  TextStyle? textStyle;

  CustomRoundedButton({super.key, required this.btnText, this.icon, this.bgColor,  this.callback, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: const RoundedRectangleBorder  (
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(21),
            bottomRight: Radius.circular(21),
          )
        ),

      ),
      onPressed: callback,
      child: (icon != null)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                SizedBox(width: 10),
                Text(
                  btnText,
                  style: textStyle,
                ),
              ],
            )
          : Text(
              btnText,
              style: textStyle,
            ),
    );
  }
}
