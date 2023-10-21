import 'package:chat_app2/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String btnText;
  VoidCallback onPressed;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;

  CustomTextButton(
      {required this.btnText,
      required this.onPressed,
      this.fontSize,
      this.color,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: CustomText(
        text: btnText,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
