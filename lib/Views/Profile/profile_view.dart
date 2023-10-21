import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/custom_text.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../Account/account_view.dart';
import 'components/custom_list_tile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryColor,
          toolbarHeight: 151.h,
          leading: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                size: 25.sp,
                color: AppColors.kWhiteColor,
              ),
            ),
          ),
          centerTitle: true,
          title: Column(
            children: [
              CircleAvatar(
                radius: 41.r,
                backgroundImage: AssetImage(AppImages.profileImg),
              ),
              SizedBox(height: 10.h),
              CustomText(
                text: "Abraham",
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.kWhiteColor,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 28.h),
            child: Column(
              children: [
                CustomListTile(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Account(),
                        ));
                  },
                  circleAvatarIcon: Icons.key,
                  titleText: "Account",
                  subtitleText: "Change profile details",
                  trailingIcon: Icons.arrow_forward_ios,
                ),
                SizedBox(
                  height: 19.sp,
                ),
                CustomListTile(
                  onPressed: () {},
                  circleAvatarIcon: Icons.notifications,
                  titleText: "Notifications",
                  subtitleText: "permissions",
                  trailingIcon: Icons.arrow_forward_ios,
                ),
                SizedBox(
                  height: 19.sp,
                ),
                CustomListTile(
                  onPressed: () {},
                  circleAvatarIcon: Icons.people,
                  titleText: "Invite a friend",
                  subtitleText: "",
                  trailingIcon: Icons.arrow_forward_ios,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
