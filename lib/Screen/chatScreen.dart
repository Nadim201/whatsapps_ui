import 'package:flutter/material.dart';
import 'package:whatsapps_ui/widget/chatListTile.dart';

import '../model/chatModel.dart';

class chatScreen extends StatelessWidget {
  chatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatModels.length,
      itemBuilder: (context, index) {
        return ChatList(chatModels[index]);
      },
    );
  }
}
