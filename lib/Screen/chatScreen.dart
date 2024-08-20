import 'package:flutter/material.dart';
import 'package:whatsapps_ui/pages/ShowContactPage.dart';
import 'package:whatsapps_ui/widget/chatListTile.dart';

import '../model/chatModel.dart';

class chatScreen extends StatelessWidget {
  chatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const ShowContactPage();
              },
            ),
          );
        },
        backgroundColor: const Color(0xFF25D366),
        foregroundColor: Colors.white,
        elevation: 0,
        child: const Icon(Icons.add_comment),
      ),
      body: ListView.builder(
        itemCount: chatModels.length,
        itemBuilder: (context, index) {
          return ChatList(chatModels[index]);
        },
      ),
    );
  }
}
