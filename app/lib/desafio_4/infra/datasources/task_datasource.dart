// ignore_for_file: avoid_positional_boolean_parameters

abstract class TaskDatasource {
  Future<void> addTask(Map<String, dynamic> task, String userId);

  Future<List<Map<String, dynamic>>> getAll(String userId);

  Future<void> doneTask(String taskId, bool isDone, String userId);
}
