import 'package:cloud_firestore/cloud_firestore.dart';

abstract class DatabaseService {
  Future<void> add(String collection, Map<String, dynamic> data);

  Future<QuerySnapshot<Map<String, dynamic>>> getAll(String collection);

  Future<void> doneTask(String collection, String taskId, bool isDone);
}
