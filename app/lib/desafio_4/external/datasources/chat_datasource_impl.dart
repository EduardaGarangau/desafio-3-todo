import 'package:app/desafio_4/external/services/database_service.dart';
import 'package:app/desafio_4/infra/datasources/chat_datasource.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatDatasourceImpl implements ChatDatasource {
  final DatabaseService _service;

  ChatDatasourceImpl(this._service);

  @override
  Future<void> addMessage(Map<String, dynamic> message) async {
    await _service.addMessage('chat', message);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getMessages() {
    return _service.getMessages('chat');
  }
}
