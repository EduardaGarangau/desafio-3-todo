import 'package:app/desafio_4/domain/DTOs/message_dto.dart';
import 'package:dartz/dartz.dart';

import '../../external/services/errors/custom_exceptions.dart';
import '../entities/message_entity.dart';

abstract class ChatRepository {
  Future<Either<CustomException, Unit>> createMessage(MessageDTO message);

  Future<Either<CustomException, List<MessageEntity>>> getMessages();
}
