import 'package:app/desafio_4/domain/DTOs/message_dto.dart';
import 'package:app/desafio_4/domain/entities/message_entity.dart';
import 'package:app/desafio_4/domain/usecases/create_message_usecase.dart';
import 'package:app/desafio_4/domain/usecases/get_messages_usecase.dart';
import 'package:flutter_triple/flutter_triple.dart';

class ChatStore extends Store<List<MessageEntity>> {
  final CreateMessageUsecase _createMessageUsecase;
  final GetMessagesUsecase _getMessagesUsecase;

  ChatStore(
    this._createMessageUsecase,
    this._getMessagesUsecase,
  ) : super([]);

  Future<void> getMessages() async {
    setLoading(true);

    final messages = await _getMessagesUsecase();
    messages.sort((a, b) => a.sendedAt.compareTo(b.sendedAt));
    update(messages);
  }

  Future<void> createMessage(MessageDTO message) async {
    setLoading(true);
    await _createMessageUsecase(message);
    await getMessages();
  }
}
