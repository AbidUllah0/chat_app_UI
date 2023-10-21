import 'package:flutter/material.dart';

class MessagesData {
  String text;
  DateTime time;
  bool isSendByMe;

  MessagesData(
      {required this.text, required this.time, required this.isSendByMe});
}
