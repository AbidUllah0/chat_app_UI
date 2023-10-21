import 'package:chat_app2/Widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  String btnText;
  Color? btnColor;
  Color? btnTextColor;
  VoidCallback onPressed;
  double? fontSize;
  FontWeight? fontWeight;

  CustomButton({
    required this.btnText,
    this.btnColor,
    this.fontSize,
    this.btnTextColor,
    required this.onPressed,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 48.h,
      minWidth: MediaQuery.of(context).size.width,
      color: btnColor,
      onPressed: onPressed,
      child: CustomText(
        text: btnText,
        color: btnTextColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),
      elevation: 0,
    );
  }
}
