import 'package:app/desafio_4/domain/entities/message_entity.dart';

import '../repositories/chat_repository.dart';

class GetMessagesUsecase {
  final ChatRepository _repository;

  GetMessagesUsecase(this._repository);

  Future<List<MessageEntity>> call() async {
    return _repository.getMessages();
  }
}
