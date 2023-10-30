import 'package:chat_app2/Views/messages/messages.dart';
import 'package:chat_app2/Widgets/custom_button.dart';
import 'package:chat_app2/Widgets/custom_text_btn.dart';
import 'package:chat_app2/Widgets/custom_textfield.dart';
import 'package:chat_app2/Widgets/or_with_divider.dart';
import 'package:chat_app2/Widgets/rounded_container.dart';
import 'package:chat_app2/Widgets/custom_text.dart';
import 'package:chat_app2/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.kWhiteColor,
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Column(
              children: [
                CustomText(
                  text: 'Log in',
                  fontWeight: FontWeight.w700,
                  fontSize: 18.sp,
                  color: AppColors.kPrimaryColor,
                ),
                SizedBox(height: 15),
                CustomText(
                  textAlign: TextAlign.center,
                  text:
                      'Welcome back! Sign in using your social account or email to continue us',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  color: AppColors.textGreyColor,
                  letterSpacing: 0.1,
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundedContainer(img: AppImages.facebook),
                    RoundedContainer(img: AppImages.google),
                    RoundedContainer(
                      img: AppImages.appleIcon,
                      color: AppColors.kBlackColor,
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                OrWithDivider(
                  orTextColor: AppColors.textGreyColor,
                ),
                SizedBox(height: 10.h),
                CustomTextField(labelText: 'Your Email'),
                SizedBox(height: 10.h),
                CustomTextField(labelText: 'Password'),
                SizedBox(height: MediaQuery.of(context).size.height / 4.3.h),
                CustomButton(
                  btnText: 'Log in',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Messages(),
                      ),
                    );
                  },
                  btnColor: AppColors.kPrimaryColor,
                  btnTextColor: AppColors.kWhiteColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 10.h),
                CustomTextButton(
                  btnText: 'Forgot Password?',
                  onPressed: () {},
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
