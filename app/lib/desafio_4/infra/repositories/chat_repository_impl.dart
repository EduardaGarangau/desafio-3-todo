import 'package:app/desafio_4/domain/DTOs/message_dto.dart';
import 'package:app/desafio_4/domain/entities/message_entity.dart';
import 'package:app/desafio_4/infra/datasources/chat_datasource.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repositories/chat_repository.dart';
import '../../external/services/errors/custom_exceptions.dart';
import '../mappers/message_entity_mapper.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatDatasource _datasource;

  ChatRepositoryImpl(this._datasource);

  @override
  Future<Either<CustomException, Unit>> createMessage(
    MessageDTO message,
  ) async {
    try {
      final chatMessage = MessageEntityMapper.toMap(message);
      await _datasource.addMessage(chatMessage);
      return right(unit);
    } on CustomException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<CustomException, List<MessageEntity>>> getMessages() async {
    try {
      final documents = await _datasource.getMessages();
      return right(documents.map(MessageEntityMapper.fromMap).toList());
    } on CustomException catch (e) {
      return left(e);
    }
  }
}
