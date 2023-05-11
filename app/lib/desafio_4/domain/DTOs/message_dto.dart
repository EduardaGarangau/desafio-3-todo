import 'package:app/desafio_4/domain/value_objects/text_vo.dart';
import 'package:dartz/dartz.dart';

class MessageDTO {
  final String userId;
  final String userName;
  final String userImage;
  final TextVO text;
  final DateTime sendedAt;

  MessageDTO({
    required this.userId,
    required this.userName,
    required this.userImage,
    required this.text,
    required this.sendedAt,
  });

  Either<String, Unit> validator() {
    return text.validator();
  }
}
