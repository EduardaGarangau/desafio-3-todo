import 'package:app/desafio_4/external/services/database_service.dart';
import 'package:app/desafio_4/infra/datasources/task_datasource.dart';

class TaskDatasourceImpl implements TaskDatasource {
  final DatabaseService _service;

  const TaskDatasourceImpl(this._service);

  @override
  Future<void> addTask(Map<String, dynamic> task, String userId) async {
    await _service.add('tasks', task, userId);
  }

  @override
  Future<List<Map<String, dynamic>>> getAll(String userId) async {
    return _service.get('tasks', userId);
  }

  @override
  Future<void> doneTask(String taskId, bool isDone, String userId) async {
    await _service.updateTask(userId, taskId, isDone);
  }
}
