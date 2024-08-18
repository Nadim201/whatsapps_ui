import '../widget/info.dart';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String profilePic;
  bool select;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.profilePic,
    this.select = false, // Default value for select
  });
}

final List<ChatModel> chatModels = info.map((item) {
  return ChatModel(
    name: item['name'] as String,
    message: item['message'] as String,
    time: item['time'] as String,
    profilePic: item['profilePic'] as String,
  );
}).toList();

final List<ChatModel> createGroupModel = perinfo.map((item) {
  return ChatModel(
    name: item['name'] as String,
    message: item['message'] as String,
    time: item['time'] as String,
    profilePic: item['profilePic'] as String,
  );
}).toList();
