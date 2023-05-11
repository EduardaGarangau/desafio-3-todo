import 'package:app/desafio_4/domain/entities/message_entity.dart';
import 'package:app/desafio_4/domain/repositories/chat_repository.dart';
import 'package:app/desafio_4/domain/usecases/get_messages_usecase.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../repositories/chat_repository_mock.dart';

void main() {
  late ChatRepository repository;
  late GetMessagesUsecase usecase;

  setUpAll(() {
    repository = ChatRepositoryMock();
    usecase = GetMessagesUsecase(repository);
  });

  group('GetMessagesUsecase <Unit>', () {
    test('should return List<MessageEntity>', () async {
      final messages = [
        MessageEntity(
          id: 'russel',
          userId: '1',
          userName: 'Russel',
          userImage: '',
          text: 'teste',
          sendedAt: DateTime.now(),
        ),
      ];

      when(() => repository.getMessages())
          .thenAnswer((_) async => right(messages));

      final result = await usecase();
      result.fold(
        (l) => expect(l, equals(null)),
        (r) => expect(r.length, equals(1)),
      );
    });
  });

  group('GetMessagesUsecase <CustomException>', () {
    test('should return CustomException', () async {
      when(() => repository.getMessages()).thenAnswer(
        (_) async => left(CustomException('Erro!', StackTrace.current)),
      );

      final result = await usecase();
      result.fold(
        (l) {
          expect(l, isA<CustomException>());
          expect(l.message, equals('Erro!'));
        },
        (r) => expect(r, null),
      );
    });
  });
}
