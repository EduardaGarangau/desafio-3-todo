import 'package:app/desafio_4/external/datasources/chat_datasource_impl.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../services/firestoredatabase_service_mock.dart';

void main() {
  late FirestoreDatabaseServiceMock service;
  late ChatDatasourceImpl datasource;

  setUpAll(() {
    service = FirestoreDatabaseServiceMock();
    datasource = ChatDatasourceImpl(service);
  });

  group('getMessages method', () {
    test('should return List<Map<String, dynamic>> if request successful',
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

      when(() => service.get('chat')).thenAnswer((_) async => response);

      final result = await datasource.getMessages();
      expect(result.length, equals(1));
      expect(result, isNotEmpty);
    });

    test('should return CustomException if request is not successful',
        () async {
      when(() => service.get('chat')).thenThrow(CustomException('Error!'));

      expect(() async => datasource.getMessages(), throwsException);
    });
  });

  group('addMessage method', () {
    test('should return void if request is successful', () async {
      final map = {
        'id': '1',
        'userId': 'russelhue',
        'userName': 'Russel Hue',
        'userImage': 'image.jpg',
        'text': 'Bom dia!',
        'sendedAt': DateTime.now().toIso8601String(),
      };

      when(() => service.add('chat', map)).thenAnswer((_) async {});

      expect(() async => datasource.addMessage(map), isA<void>());
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

      when(() => service.add('chat', map)).thenThrow(CustomException('Error!'));

      expect(() async => datasource.addMessage(map), throwsException);
    });
  });
}
