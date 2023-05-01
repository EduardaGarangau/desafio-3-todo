import 'package:app/desafio_4/domain/DTOs/message_dto.dart';

import '../entities/message_entity.dart';

abstract class ChatRepository {
  Future<void> createMessage(MessageDTO message);

  Future<List<MessageEntity>> getMessages();
}
