import 'package:flutter/material.dart';

class HomePagePopUpButtom extends StatelessWidget {
  const HomePagePopUpButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      iconColor: Colors.white,
      onSelected: (value) {
        print('$value');
      },
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            value: 'New Group',
            child: Text('New Group'),
          ),
          const PopupMenuItem(
            value: 'New broadcast',
            child: Text('New broadcast'),
          ),
          const PopupMenuItem(
            value: 'Whatsapp Web',
            child: Text('Whatsapp Web'),
          ),
          const PopupMenuItem(
            value: 'Starred Message',
            child: Text('Strred Message'),
          ),
          const PopupMenuItem(
            value: 'Setting',
            child: Text('Setting'),
          ),
        ];
      },
    );
  }
}
