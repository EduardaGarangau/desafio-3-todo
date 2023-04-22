import 'package:cloud_firestore/cloud_firestore.dart';

abstract class TaskDatasource {
  Future<void> addTask(Map<String, dynamic> task);

  Future<QuerySnapshot<Map<String, dynamic>>> getAll();

  Future<void> doneTask(String taskId, bool isDone);
}
