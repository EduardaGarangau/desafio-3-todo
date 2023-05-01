import 'package:app/desafio_4/domain/DTOs/message_dto.dart';
import 'package:app/desafio_4/domain/entities/message_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MessageEntityMapper {
  MessageEntityMapper._();

  static MessageEntity fromMap(DocumentSnapshot document) {
    final documentData = document.data() as Map;

    return MessageEntity(
      id: document.id,
      userId: documentData['userId'] as String,
      userName: documentData['userName'] as String,
      userImage: documentData['userImage'] as String,
      text: documentData['text'] as String,
      sendedAt: DateTime.parse(documentData['sendedAt']),
    );
  }

  static Map<String, dynamic> toMap(MessageDTO message) {
    return <String, dynamic>{
      'userId': message.userId,
      'userName': message.userName,
      'userImage': message.userImage,
      'text': message.text,
      'sendedAt': message.sendedAt.toIso8601String(),
    };
  }
}
