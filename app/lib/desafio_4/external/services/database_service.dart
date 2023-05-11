import 'package:cloud_firestore/cloud_firestore.dart';

abstract class DatabaseService {
  Future<void> add(String userId, Map<String, dynamic> data);

  Future<QuerySnapshot<Map<String, dynamic>>> getAll(String userId);

  // ignore: avoid_positional_boolean_parameters
  Future<void> doneTask(String userId, String taskId, bool isDone);

  Future<void> addMessage(String collection, Map<String, dynamic> data);

  Future<QuerySnapshot<Map<String, dynamic>>> getMessages(String collection);
}
