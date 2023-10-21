import 'dart:async';

import 'package:chat_app2/Views/SplashScreen/splash_screen2.dart';
import 'package:chat_app2/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SplashScreen2(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: Center(
        child: Container(
          height: 128,
          width: 144.w,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.w,
              style: BorderStyle.solid,
              color: AppColors.kWhiteColor,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: '4',
                fontSize: 72,
                color: AppColors.kWhiteColor,
                fontWeight: FontWeight.w400,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: CustomText(
                  text: 'U',
                  fontSize: 72,
                  color: AppColors.kWhiteColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
