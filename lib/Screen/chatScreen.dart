import 'package:flutter/material.dart';
import 'package:whatsapps_ui/widget/chatListTile.dart';

import '../model/chatModel.dart';

class chatScreen extends StatelessWidget {
  chatScreen({super.key});

  List<ChatModel> chats = [
    ChatModel(
      title: 'Nadim Mahmud',
      subtitle: 'Text me something',
      icon: const Icon(Icons.person),
      time: '12:34',
      isGroup: false,
    ),
    ChatModel(
      title: 'Shakil Ahmed',
      subtitle: 'Kire nadim kaj kmn cole',
      icon: const Icon(Icons.person),
      time: '8:34',
      isGroup: false,
    ),
    ChatModel(
      title: 'Md Sojib',
      subtitle: 'Kmn asis re',
      icon: const Icon(Icons.person),
      time: '3:20',
      isGroup: false,
    ),
    ChatModel(
      title: 'Group Chat',
      subtitle: 'Fake Chat',
      icon: const Icon(Icons.speaker_group),
      time: '12:34',
      isGroup: true,
    ),
    ChatModel(
      title: 'Lilu',
      subtitle: 'Text me something',
      icon: const Icon(Icons.person),
      time: '12:34',
      isGroup: false,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ChatList(chats[index]);
      },
    );
  }
}
