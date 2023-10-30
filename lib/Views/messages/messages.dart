import 'package:chat_app2/Views/Profile/profile_view.dart';
import 'package:chat_app2/Views/messages/components/message_input_textfield.dart';
import 'package:chat_app2/Widgets/custom_text.dart';
import 'package:chat_app2/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../model/messages_data.dart';

class Messages extends StatefulWidget {
  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
  }

  void scrollToLatestMessage() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

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
    MessagesData(
        text: 'Hello! Jhon abraham', time: DateTime.now(), isSendByMe: true),
    MessagesData(
        text: 'Have a great working week!!',
        time: DateTime.now(),
        isSendByMe: false),
    MessagesData(
        text: 'Hope you like it', time: DateTime.now(), isSendByMe: false),
    MessagesData(
        text: 'Hello! Jhon abraham', time: DateTime.now(), isSendByMe: true),
    MessagesData(
        text: 'Have a great working week!!',
        time: DateTime.now(),
        isSendByMe: false),
    MessagesData(
        text: 'Hope you like it', time: DateTime.now(), isSendByMe: false),
    MessagesData(
        text: 'Hello! Jhon abraham', time: DateTime.now(), isSendByMe: true),
  ];

  @override
  Widget build(BuildContext context) {
    if (WidgetsBinding.instance.window.viewInsets.bottom > 0.0) {
      scrollToLatestMessage();
    } else {}
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
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                icon: Icon(Icons.account_circle_outlined,
                    size: 40, color: AppColors.kPrimaryColor),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            margin: EdgeInsets.only(left: 13, right: 13),
            height: 40.h,
            child: MessageInputTextField(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
