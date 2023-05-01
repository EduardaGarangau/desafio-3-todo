import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ChatDatasource {
  Future<void> addMessage(Map<String, dynamic> message);

  Future<QuerySnapshot<Map<String, dynamic>>> getMessages();
}
