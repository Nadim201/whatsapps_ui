import 'package:flutter/material.dart';
import 'package:whatsapps_ui/model/chatModel.dart';

class CreateGroupContact extends StatelessWidget {
  const CreateGroupContact({super.key, required this.contact});

  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: Text(contact.message),
      leading: SizedBox(
        child: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(contact.profilePic),
            ),
            if (contact.select)
              const Positioned(
                bottom: 1,
                right: 4,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
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
