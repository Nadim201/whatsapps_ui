import 'package:flutter/material.dart';
import 'package:whatsapps_ui/model/chatModel.dart';

class CustomContact extends StatelessWidget {
  // Declare index as a parameter

  const CustomContact({super.key, required this.contact});

  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          subtitle: Text(contact.message), // Use message for subtitle
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(contact.profilePic),
          ),
          title: Text(
            contact.name,
            style: TextStyle(fontSize: 16),
          ),
          trailing: Text(
            contact.time,
          ),
        ),
      ],
    );
  }
}
