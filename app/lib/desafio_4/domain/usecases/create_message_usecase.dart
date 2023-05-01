import 'package:app/desafio_4/domain/DTOs/message_dto.dart';
import 'package:app/desafio_4/domain/repositories/chat_repository.dart';

class CreateMessageUsecase {
  final ChatRepository _repository;

  CreateMessageUsecase(this._repository);

  Future<void> call(MessageDTO message) async {
    await _repository.createMessage(message);
  }
}
