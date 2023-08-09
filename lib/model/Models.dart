class User {
  final String id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});
}

//User Data
class UserData {
   String? id;
   String? name;
   String? email;

  UserData(this.id, this.name, this.email);
}

class ChatUsers {
  String name;
  String messageText;
  String time;

  ChatUsers(this.name, this.messageText, this.time);
}

class ChatMessage {
  String messageContent;
  String messageType;

  ChatMessage(this.messageContent, this.messageType);
}
