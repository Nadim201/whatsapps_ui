import '../widget/info.dart';

class ChatModel {
  String name;
  String message;
  String profilePic;
  String time;
  bool isGroup;

  ChatModel(
      {required this.name,
      required this.message,
      required this.profilePic,
      required this.time,
      required this.isGroup});
}

final List<ChatModel> chatModels = info.map((item) {
  return ChatModel(
    name: item['name'] as String,
    message: item['message'] as String,
    time: item['time'] as String,
    profilePic: item['profilePic'] as String,
    isGroup: true,
  );
}).toList();
