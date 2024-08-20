import 'package:flutter/material.dart';

class Chat {
  final String name;
  final String lastMessage;
  final DateTime time;
  bool isUnread;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.time,
    this.isUnread = false, // Default is unread false
  });
}

List<Chat> chats = [
  Chat(
      name: "Alice",
      lastMessage: "Hey, how are you?",
      time: DateTime.now(),
      isUnread: true),
  Chat(
      name: "Bob",
      lastMessage: "Let's catch up!",
      time: DateTime.now().subtract(Duration(hours: 1)),
      isUnread: false),
  Chat(
      name: "Charlie",
      lastMessage: "Meeting at 5?",
      time: DateTime.now().subtract(Duration(hours: 2)),
      isUnread: true),
  // Add more chats
];
List<Chat> unreadChats = chats.where((chat) => chat.isUnread).toList();

class UnreadChatsScreen extends StatelessWidget {
  const UnreadChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Unread Messages",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ...unreadChats.map((chat) => ListTile(
                leading: CircleAvatar(child: Text(chat.name[0])),
                title: Text(chat.name),
                subtitle: Text(chat.lastMessage),
                trailing: Text(chat.time.toLocal().toString().split(' ')[1]),
                onTap: () {
                  // Handle opening the chat
                },
              )),
        ],
      ),
    );
  }
}
