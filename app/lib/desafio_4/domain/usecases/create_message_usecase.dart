import 'package:app/desafio_4/domain/DTOs/message_dto.dart';
import 'package:app/desafio_4/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';

import '../../external/services/errors/custom_exceptions.dart';

class CreateMessageUsecase {
  final ChatRepository _repository;

  CreateMessageUsecase(this._repository);

  Future<Either<CustomException, Unit>> call(MessageDTO message) async {
    return message.validator().fold(
          (l) => left(InvalidParamsException(l)),
          (r) => _repository.createMessage(message),
        );
  }
}
