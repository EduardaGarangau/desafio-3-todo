class MessageDTO {
  final String userId;
  final String userName;
  final String userImage;
  final String text;
  final DateTime sendedAt;

  MessageDTO({
    required this.userId,
    required this.userName,
    required this.userImage,
    required this.text,
    required this.sendedAt,
  });
}
