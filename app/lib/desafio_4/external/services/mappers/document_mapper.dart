import 'package:cloud_firestore/cloud_firestore.dart';

class DocumentMapper {
  DocumentMapper._();

  static Map<String, dynamic> fromDocumentMessage(DocumentSnapshot document) {
    final documentData = document.data()! as Map;

    return {
      'id': document.id,
      'userId': documentData['userId'] as String,
      'userName': documentData['userName'] as String,
      'userImage': documentData['userImage'] as String,
      'text': documentData['text'] as String,
      'sendedAt': documentData['sendedAt'],
    };
  }

  static Map<String, dynamic> fromDocumentTask(DocumentSnapshot document) {
    final documentData = document.data()! as Map;

    return {
      'id': document.id,
      'title': documentData['title'] as String,
      'date': documentData['date'],
      'done': documentData['done'] as bool,
    };
  }
}
