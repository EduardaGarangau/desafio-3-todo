import 'package:app/desafio_4/domain/DTOs/message_dto.dart';
import 'package:app/desafio_4/domain/value_objects/text_vo.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
import 'package:app/desafio_4/infra/repositories/chat_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../datasources/chat_datasource_mock.dart';

void main() {
  late ChatDatasourceMock datasource;
  late ChatRepositoryImpl repository;

  setUpAll(() {
    datasource = ChatDatasourceMock();
    repository = ChatRepositoryImpl(datasource);
  });

  group('createMessage method', () {
    test('should return unit if request is successful', () async {
      final map = {
        'id': '1',
        'userId': 'russelhue',
        'userName': 'Russel Hue',
        'userImage': 'image.jpg',
        'text': 'Bom dia!',
        'sendedAt': DateTime.now().toIso8601String(),
      };

      final message = MessageDTO(
        userId: 'russelhue',
        userName: 'Russel Hue',
        userImage: 'image.jpg',
        text: TextVO('Bom dia!'),
        sendedAt: DateTime.now(),
      );

      when(() => datasource.addMessage(map)).thenAnswer((_) async {});

      final result = await repository.createMessage(message);

      result.fold(
        (l) {
          expect(l, null);
        },
        (r) {
          expect(r, isA<Unit>());
        },
      );
    });

    test('should return CustomException if request is not successful',
        () async {
      final map = {
        'id': '1',
        'userId': 'russelhue',
        'userName': 'Russel Hue',
        'userImage': 'image.jpg',
        'text': 'Bom dia!',
        'sendedAt': DateTime.now().toIso8601String(),
      };

      final message = MessageDTO(
        userId: 'russelhue',
        userName: 'Russel Hue',
        userImage: 'image.jpg',
        text: TextVO('Bom dia!'),
        sendedAt: DateTime.now(),
      );

      when(() => datasource.addMessage(map))
          .thenThrow(CustomException('Error!'));

      final result = await repository.createMessage(message);

      result.fold(
        (l) {
          expect(l, isA<CustomException>());
        },
        (r) {
          expect(r, isNull);
        },
      );
    });
  });
}
