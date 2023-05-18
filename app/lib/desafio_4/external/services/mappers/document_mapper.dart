import 'package:cloud_firestore/cloud_firestore.dart';

class DocumentMapper {
  DocumentMapper._();

  static Map<String, dynamic> fromDocument(DocumentSnapshot document) {
    final documentData = document.data()! as Map;

    return {
      'id': document.id,
      ...documentData,
    };
  }
}
