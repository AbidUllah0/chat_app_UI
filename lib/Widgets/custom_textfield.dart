import 'package:chat_app2/Widgets/custom_text.dart';
import 'package:chat_app2/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String labelText;

  CustomTextField({required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // CustomText(
        //   text: labelText,
        //   fontSize: 14,
        //   fontWeight: FontWeight.w400,
        //   color: AppColors.textFieldTextColor,
        //   letterSpacing: 0.1,
        // ),
        TextFormField(
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textFieldTextColor,
              letterSpacing: 0.1,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.borderColor,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.borderColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
