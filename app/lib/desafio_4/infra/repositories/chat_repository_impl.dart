import 'package:app/desafio_4/domain/DTOs/message_dto.dart';
import 'package:app/desafio_4/domain/entities/message_entity.dart';
import 'package:app/desafio_4/infra/datasources/chat_datasource.dart';

import '../../domain/repositories/chat_repository.dart';
import '../mappers/message_entity_mapper.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatDatasource _datasource;

  ChatRepositoryImpl(this._datasource);

  @override
  Future<void> createMessage(MessageDTO message) async {
    final chatMessage = MessageEntityMapper.toMap(message);
    await _datasource.addMessage(chatMessage);
  }

  @override
  Future<List<MessageEntity>> getMessages() async {
    final documents = await _datasource.getMessages();
    return documents.docs.map(MessageEntityMapper.fromMap).toList();
  }
}
