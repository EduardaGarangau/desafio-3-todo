import 'package:app/desafio_4/domain/DTOs/message_dto.dart';
import 'package:app/desafio_4/domain/repositories/chat_repository.dart';
import 'package:app/desafio_4/domain/usecases/create_message_usecase.dart';
import 'package:app/desafio_4/domain/value_objects/text_vo.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../repositories/chat_repository_mock.dart';

void main() {
  late ChatRepository repository;
  late CreateMessageUsecase usecase;

  setUpAll(() {
    repository = ChatRepositoryMock();
    usecase = CreateMessageUsecase(repository);
  });

  group('CreateMessageUsecase <Unit>', () {
    test('should return unit', () async {
      final message = MessageDTO(
        userId: 'russelhue',
        userName: 'Russel Hue',
        userImage: '',
        text: TextVO('TESTE'),
        sendedAt: DateTime.now(),
      );

      when(() => repository.createMessage(message))
          .thenAnswer((_) async => right(unit));

      final result = await usecase(message);
      result.fold(
        (l) => expect(l, equals(null)),
        (r) => expect(r, isA<Unit>()),
      );
    });
  });

  group('CreateMessageUsecase <CustomException>', () {
    test('should return CustomException', () async {
      final message = MessageDTO(
        userId: 'russelhue',
        userName: 'Russel Hue',
        userImage: '',
        text: TextVO('TESTE'),
        sendedAt: DateTime.now(),
      );

      when(() => repository.createMessage(message)).thenAnswer(
        (_) async => left(CustomException('Erro!', StackTrace.current)),
      );

      final result = await usecase(message);
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
