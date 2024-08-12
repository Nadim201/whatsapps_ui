import 'package:flutter/material.dart';
import 'package:whatsapps_ui/model/chatModel.dart';
import 'package:whatsapps_ui/pages/individualPage.dart';

class ChatList extends StatelessWidget {
  const ChatList(
    this.chatModel, {
    super.key,
  });

  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => IndividualPage(
              chatModel: chatModel,
            ),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green.shade400,
              child: chatModel.isGroup
                  ? const Icon(
                      Icons.groups_2,
                      color: Colors.white,
                      size: 40,
                    )
                  : const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40,
                    ),
            ),
            title: Text(
              chatModel.title,
              style: const TextStyle(fontSize: 20),
            ),
            trailing: Text(
              chatModel.time,
              style: const TextStyle(fontSize: 16),
            ),
            subtitle: Text(chatModel.subtitle,
                style: const TextStyle(fontSize: 16, color: Colors.black38)),
          ),
          const Divider()
        ],
      ),
    );
  }
}
