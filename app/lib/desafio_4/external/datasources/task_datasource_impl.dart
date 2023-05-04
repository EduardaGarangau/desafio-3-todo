import 'package:app/desafio_4/external/services/database_service.dart';
import 'package:app/desafio_4/infra/datasources/task_datasource.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TaskDatasourceImpl implements TaskDatasource {
  final DatabaseService _service;

  TaskDatasourceImpl(this._service);

  @override
  Future<void> addTask(Map<String, dynamic> task, String userId) async {
    await _service.add(userId, task);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getAll(String userId) async {
    return _service.getAll(userId);
  }

  @override
  Future<void> doneTask(String taskId, bool isDone, String userId) async {
    await _service.doneTask(userId, taskId, isDone);
  }
}
