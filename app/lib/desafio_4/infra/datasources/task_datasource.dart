abstract class TaskDatasource {
  Future<void> addTask(Map<String, dynamic> task);

  Future<List<Map<String, dynamic>>> getAll();
}
