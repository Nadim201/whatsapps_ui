import 'package:flutter/material.dart';

class ChatModel {
  String title;
  String subtitle;
  Icon icon;
  String time;
  bool isGroup;

  ChatModel(
      {required this.title,
      required this.subtitle,
      required this.icon,
      required this.time,
      required this.isGroup});
}
