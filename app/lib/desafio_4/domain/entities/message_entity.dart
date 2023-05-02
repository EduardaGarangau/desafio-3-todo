import 'package:intl/intl.dart';

class MessageEntity {
  final String id;
  final String userId;
  final String userName;
  final String userImage;
  final String text;
  final DateTime sendedAt;

  MessageEntity({
    required this.id,
    required this.userId,
    required this.userName,
    required this.userImage,
    required this.text,
    required this.sendedAt,
  });

  String get getTime {
    return DateFormat.Hm('en_US').format(sendedAt);
  }

  bool isMessageReceived(String receiverId) {
    return userId == receiverId;
  }
}
