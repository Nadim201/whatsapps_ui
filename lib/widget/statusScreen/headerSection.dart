import 'package:flutter/material.dart';
import 'package:whatsapps_ui/model/chatModel.dart';
import 'package:whatsapps_ui/pages/individualPage.dart';

class Headersection extends StatelessWidget {
  const Headersection(
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
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(chatModel.profilePic),
                radius: 28,
                backgroundColor: Colors.green.shade400,
              ),
              title: Text(
                chatModel.name,
                style: const TextStyle(fontSize: 20),
              ),
              trailing: Column(
                children: [
                  Text(
                    chatModel.time,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              subtitle: Text(chatModel.message,
                  style: const TextStyle(fontSize: 16, color: Colors.black38)),
            ),
          ),
        ],
      ),
    );
  }
}
