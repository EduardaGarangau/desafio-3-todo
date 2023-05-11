import 'package:app/desafio_4/domain/entities/message_entity.dart';
import 'package:dartz/dartz.dart';

import '../../external/services/errors/custom_exceptions.dart';
import '../repositories/chat_repository.dart';

class GetMessagesUsecase {
  final ChatRepository _repository;

  GetMessagesUsecase(this._repository);

  Future<Either<CustomException, List<MessageEntity>>> call() async {
    return _repository.getMessages();
  }
}
