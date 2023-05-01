import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {
  Future<void> addMessage(String collection, Map<String, dynamic> data) async {
    final firestore = FirebaseFirestore.instance;
    await firestore.collection(collection).add(data);
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getMessages(
      String collection) async {
    final firestore = FirebaseFirestore.instance;
    return firestore.collection(collection).get();
  }
}
