import 'package:chat_app2/Views/SignUpScreen/components/select_gender.dart';
import 'package:chat_app2/Views/messages/messages.dart';
import 'package:chat_app2/Widgets/custom_button.dart';
import 'package:chat_app2/Widgets/custom_text.dart';
import 'package:chat_app2/Widgets/custom_textfield.dart';
import 'package:chat_app2/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.kWhiteColor,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              CustomText(
                text: 'Sign up with Email',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.kPrimaryColor,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: CustomText(
                  text:
                      'Get chatting with friends and family today by signing up for our chat app!',
                  textAlign: TextAlign.start,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  color: AppColors.textGreyColor,
                ),
              ),
              CustomTextField(labelText: 'Preferred Name'),
              SizedBox(height: 5.h),
              CustomTextField(labelText: 'Email'),
              SizedBox(height: 5.h),
              CustomTextField(labelText: 'Password'),
              SizedBox(height: 5.h),
              CustomTextField(labelText: 'Confirm Password'),
              SizedBox(height: 5.h),
              SelectGender(),
              SizedBox(height: 5.h),
              CustomTextField(labelText: 'Birthday'),
              SizedBox(height: 5.h),
              CustomTextField(labelText: 'Location'),
              SizedBox(height: 5.h),
              SizedBox(
                height: 10.h,
              ),
              CustomButton(
                btnText: 'Create an account',
                onPressed: () {},
                btnColor: AppColors.kPrimaryColor,
                btnTextColor: AppColors.kWhiteColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
