abstract class ChatDatasource {
  Future<void> addMessage(Map<String, dynamic> message);

  Future<List<Map<String, dynamic>>> getMessages();
}
