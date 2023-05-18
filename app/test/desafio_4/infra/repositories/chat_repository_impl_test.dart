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
      final message = MessageDTO(
        userId: 'russelhue',
        userName: 'Russel Hue',
        userImage: 'image.jpg',
        text: TextVO('Bom dia!'),
        sendedAt: DateTime.now(),
      );

      when(() => datasource.addMessage(any())).thenAnswer((_) async {});

      final result = await repository.createMessage(message);
    });

    test('should return CustomException if request is not successful',
        () async {
      final message = MessageDTO(
        userId: 'russelhue',
        userName: 'Russel Hue',
        userImage: 'image.jpg',
        text: TextVO('Bom dia!'),
        sendedAt: DateTime.now(),
      );

      // usa o any quando o método do teste cria uma variavel que é passada para o mock
      when(() => datasource.addMessage(any()))
          .thenThrow(CustomException('Error!'));

      final result = await repository.createMessage(message);

      result.fold(
        (l) {
          expect(l, isA<CustomException>());
          expect(l.message, equals('Error!'));
        },
        (r) {
          expect(r, isNull);
        },
      );
    });
  });

  group('getMessages method', () {
    test('should return List<Map<String, dynamic>> if request is successful',
        () async {
      final response = [
        {
          'id': '1',
          'userId': 'russelhue',
          'userName': 'Russel Hue',
          'userImage': 'image.jpg',
          'text': 'Bom dia!',
          'sendedAt': DateTime.now().toIso8601String(),
        },
      ];

      when(() => datasource.getMessages()).thenAnswer((_) async => response);

      final result = await repository.getMessages();

      result.fold(
        (l) {
          expect(l, isNull);
        },
        (r) {
          expect(r.length, equals(1));
        },
      );
    });

    test('should return CustomException if request is not successful',
        () async {
      when(() => datasource.getMessages()).thenThrow(CustomException('Error!'));

      final result = await repository.getMessages();

      result.fold(
        (l) {
          expect(l, isA<CustomException>());
          expect(l.message, equals('Error!'));
        },
        (r) {
          expect(r, isNull);
        },
      );
    });
  });
}
