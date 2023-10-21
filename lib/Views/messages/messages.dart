import 'package:chat_app2/Views/Profile/profile_view.dart';
import 'package:chat_app2/Widgets/custom_text.dart';
import 'package:chat_app2/Widgets/custom_textfield.dart';
import 'package:chat_app2/utils/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../model/messages_data.dart';

class Messages extends StatelessWidget {
  List<MessagesData> _data = [
    MessagesData(
        text: 'Hello! Jhon abraham', time: DateTime.now(), isSendByMe: true),
    MessagesData(
        text: 'Hello ! Nazrul How are you?',
        time: DateTime.now(),
        isSendByMe: false),
    MessagesData(
        text: 'You did your job well!', time: DateTime.now(), isSendByMe: true),
    MessagesData(
        text: 'Have a great working week!!',
        time: DateTime.now(),
        isSendByMe: false),
    MessagesData(
        text: 'Hope you like it', time: DateTime.now(), isSendByMe: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.kWhiteColor,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 40.sp,
                  color: AppColors.kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: _data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Align(
                          alignment: _data[index].isSendByMe == false
                              ? Alignment.centerLeft
                              : Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: _data[index].isSendByMe == false
                                  ? AppColors.receiveContainerColor
                                  : AppColors.kPrimaryColor,
                            ),
                            child: CustomText(
                              text: _data[index].text,
                              color: _data[index].isSendByMe == false
                                  ? AppColors.kBlackColor
                                  : AppColors.kWhiteColor,
                            ),
                          ),
                        ),
                        Align(
                          alignment: _data[index].isSendByMe == true
                              ? Alignment.centerRight
                              : Alignment.bottomCenter,
                          child: CustomText(
                            text: DateFormat.jm().format(
                              DateFormat("hh:mm:ss").parse("14:15:00"),
                            ),

                            // text: '${currentTime.hour}:${currentTime.minute}'),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: 150.h,
                ),
                Container(
                  height: 40.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Write Your Message',
                      suffixIcon: Icon(
                        Icons.send_sharp,
                        color: AppColors.textGreyColor,
                      ),
                      fillColor: Color(0xffF3F6F6),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
