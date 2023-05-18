import 'package:app/desafio_4/external/services/database_service.dart';
import 'package:app/desafio_4/infra/datasources/chat_datasource.dart';

class ChatDatasourceImpl implements ChatDatasource {
  final DatabaseService _service;

  const ChatDatasourceImpl(this._service);

  @override
  Future<void> addMessage(Map<String, dynamic> message) async {
    await _service.add('chat', message);
  }

  @override
  Future<List<Map<String, dynamic>>> getMessages() {
    return _service.get('chat');
  }
}
