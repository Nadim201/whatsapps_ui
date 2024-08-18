import 'package:flutter/material.dart';
import 'package:whatsapps_ui/model/chatModel.dart';

import '../widget/createGroupContact.dart';
import '../widget/info.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key, required this.name});

  final String name;

  @override
  State<CreateGroup> createState() => _CreategroupState();
}

class _CreategroupState extends State<CreateGroup> {
  List<ChatModel> groups = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.name,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w400),
            ),
            const Text(
              'Add Participants',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
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
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: info.length,
            itemBuilder: (context, index) {
              // Initialize contact with select status
              final contact = ChatModel(
                name: perinfo[index]['name'] as String,
                message: perinfo[index]['message'] as String,
                time: perinfo[index]['time'] as String,
                profilePic: perinfo[index]['profilePic'] as String,
                select: groups
                    .any((element) => element.name == perinfo[index]['name']),
              );

              return InkWell(
                onTap: () {
                  setState(() {
                    if (contact.select == false) {
                      contact.select = true;
                      groups.add(contact);
                    } else {
                      contact.select = false;
                      groups.removeWhere(
                          (element) => element.name == contact.name);
                    }
                  });
                },
                child: CreateGroupContact(contact: contact),
              );
            },
          ),
        ],
      ),
    );
  }
}
