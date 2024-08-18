import 'package:flutter/material.dart';
import 'package:whatsapps_ui/model/chatModel.dart';

class CustomContact extends StatelessWidget {
  const CustomContact({super.key, required this.contact});

  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: Text(contact.message), // Use message for subtitle
      leading: SizedBox(
        child: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(contact.profilePic),
            ),
          ],
        ),
      ),
      title: Text(
        contact.name,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
