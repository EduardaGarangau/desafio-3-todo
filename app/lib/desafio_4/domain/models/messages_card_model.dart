// ignore_for_file: public_member_api_docs, sort_constructors_first
class MessageCardModel {
  final String userImageUrl;
  final String name;
  final String badgeNumber;
  final String number;
  final String messageContent;
  final String messageHour;
  final bool hasOnlineFlag;
  final bool isMuted;

  MessageCardModel({
    required this.userImageUrl,
    required this.name,
    required this.badgeNumber,
    required this.number,
    required this.messageContent,
    required this.messageHour,
    required this.hasOnlineFlag,
    required this.isMuted,
  });
}
