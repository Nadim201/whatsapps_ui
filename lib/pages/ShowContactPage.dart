import 'package:flutter/material.dart';
import 'package:whatsapps_ui/model/chatModel.dart';
import 'package:whatsapps_ui/widget/customButtom.dart';

import 'package:whatsapps_ui/widget/customContact.dart';

import '../widget/info.dart';
import 'CreateGroup.dart';
// Assuming there's a separate page for adding contacts

class ShowContactPage extends StatelessWidget {
  const ShowContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Contact',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              '267 Contacts',
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
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
        itemCount: info.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            // "New group" button
            return const CustomButton(
              icon: Icons.group,
              title: "New group",
            );
          } else if (index == 1) {
            // "New contact" button
            return const CustomButton(
              icon: Icons.person_add,
              title: "New contact",
            );
          }

          // For contact items, continue using the ChatModel
          final adjustedIndex = index - 2;
          final contact = ChatModel(
            name: perinfo[adjustedIndex]['name'] as String,
            message: perinfo[adjustedIndex]['message'] as String,
            time: perinfo[adjustedIndex]['time'] as String,
            profilePic: perinfo[adjustedIndex]['profilePic'] as String,
          );

          return CustomContact(
            contact: contact,
          );
        },
      ),
    );
  }
}
