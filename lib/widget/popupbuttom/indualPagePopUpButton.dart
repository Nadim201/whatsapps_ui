import 'package:flutter/material.dart';

class IndualPagePopUpButton extends StatelessWidget {
  const IndualPagePopUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      iconColor: Colors.black,
      onSelected: (value) {
        print(value);
      },
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            value: 'View Contact',
            child: Text('View Contact'),
          ),
          const PopupMenuItem(
            value: 'Media, links, and docs',
            child: Text('Media, links, and docs'),
          ),
          const PopupMenuItem(
            value: 'Whatsapp Web',
            child: Text('Whatsapp Web'),
          ),
          const PopupMenuItem(
            value: 'Mute Notification',
            child: Text('Mute Notification'),
          ),
          const PopupMenuItem(
            value: 'Wallpaper',
            child: Text('Wallpaper'),
          ),
        ];
      },
    );
  }
}
