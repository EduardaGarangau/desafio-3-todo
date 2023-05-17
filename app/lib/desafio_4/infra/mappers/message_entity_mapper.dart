import 'package:app/desafio_4/domain/DTOs/message_dto.dart';
import 'package:app/desafio_4/domain/entities/message_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MessageEntityMapper {
  MessageEntityMapper._();

  static MessageEntity fromMap(Map<String, dynamic> map) {
    // ignore: cast_nullable_to_non_nullable

    return MessageEntity(
      id: map['id'] as String,
      userId: map['userId'] as String,
      userName: map['userName'] as String,
      userImage: map['userImage'] as String,
      text: map['text'] as String,
      sendedAt: DateTime.parse(map['sendedAt']),
    );
  }

  static Map<String, dynamic> toMap(MessageDTO message) {
    return <String, dynamic>{
      'userId': message.userId,
      'userName': message.userName,
      'userImage': message.userImage,
      'text': message.text.value,
      'sendedAt': message.sendedAt.toIso8601String(),
    };
  }
}
