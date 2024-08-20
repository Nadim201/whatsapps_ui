import 'package:flutter/material.dart';

import '../model/chatModel.dart';

class Avatarcard extends StatelessWidget {
  const Avatarcard({super.key, required this.contact});

  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
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
                  backgroundColor: Colors.blueGrey,
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
