import 'package:flutter/material.dart';
import 'package:whatsapps_ui/model/chatModel.dart';
import 'package:whatsapps_ui/widget/customChat.dart';

import '../widget/info.dart';

class ShowContactPage extends StatelessWidget {
  const ShowContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Contact',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '267 Contacts',
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (context) {
            return [
              const PopupMenuItem(
                value: 'Invite a friend',
                child: Text('Invite a friend'),
              ),
              const PopupMenuItem(
                value: 'Contacts',
                child: Text('Contacts'),
              ),
              const PopupMenuItem(
                value: 'Refresh',
                child: Text('Refresh'),
              ),
              const PopupMenuItem(
                value: 'Help',
                child: Text('Help'),
              ),
            ];
          })
        ],
      ),
      body: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          final contact = ChatModel(
            name: info[index]['name'] as String,
            message: info[index]['message'] as String,
            time: info[index]['time'] as String,
            profilePic: info[index]['profilePic'] as String,
            isGroup: false,
          );

          return CustomContact(
            contact: contact,
          );
        },
      ),
    );
  }
}
