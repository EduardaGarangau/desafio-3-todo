abstract class DatabaseService {
  Future<void> add(
    String collection,
    Map<String, dynamic> data, [
    String? userId,
  ]);

  Future<List<Map<String, dynamic>>> get(String collection, [String? userId]);

  Future<void> updateTask(String userId, String taskId, bool isDone);
}
