import 'package:chat_app2/Views/SignUpScreen/components/select_gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/custom_button.dart';
import '../../Widgets/custom_text.dart';
import '../../Widgets/custom_textfield.dart';
import '../../utils/app_colors.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kPrimaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 25.sp,
            color: AppColors.kWhiteColor,
          ),
        ),
        centerTitle: true,
        title: CustomText(
            text: "Account Details",
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.kWhiteColor),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 26.h, horizontal: 24.w),
          child: Column(
            children: [
              CustomTextField(
                labelText: "Preferred Name",
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextField(
                labelText: "Email Address",
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                labelText: "Location",
              ),
              SizedBox(
                height: 30.h,
              ),
              SelectGender(),
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                labelText: "Birthday",
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 48.h,
                width: 114.w,
                child: CustomButton(
                    btnTextColor: AppColors.kWhiteColor,
                    btnColor: AppColors.kPrimaryColor,
                    btnText: "Save",
                    onPressed: () {}),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
