import 'package:app/desafio_4/external/datasources/task_datasource_impl.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../services/firestoredatabase_service_mock.dart';

void main() {
  late FirestoreDatabaseServiceMock service;
  late TaskDatasourceImpl datasource;

  setUpAll(() {
    service = FirestoreDatabaseServiceMock();
    datasource = TaskDatasourceImpl(service);
  });

  group('addTask method', () {
    test('should return void if request is successful', () async {
      final map = {
        'title': 'Test',
        'date': DateTime.now().toIso8601String(),
        'done': false,
      };

      when(() => service.add('tasks', map, 'russelhue'))
          .thenAnswer((_) async {});

      expect(() async => datasource.addTask(map, 'russelhue'), isA<void>());
    });

    test('should return CustomException if request is not successful',
        () async {
      final map = {
        'title': 'Test',
        'date': DateTime.now().toIso8601String(),
        'done': false,
      };

      when(() => service.add('tasks', map, 'russelhue'))
          .thenThrow(CustomException('Error!'));

      expect(() async => datasource.addTask(map, 'russelhue'), throwsException);
    });
  });

  group('getAll method', () {
    test('should return List<Map<String, dynamic>> if request is successful',
        () async {
      final response = [
        {
          'id': '123',
          'title': 'Test',
          'date': DateTime.now().toIso8601String(),
          'done': false,
        },
      ];

      when(() => service.get('tasks', 'russelhue'))
          .thenAnswer((_) async => response);

      final result = await datasource.getAll('russelhue');
      expect(result.length, equals(1));
    });

    test('should return CustomException if request is not successful',
        () async {
      when(() => service.get('tasks', 'russelhue'))
          .thenThrow(CustomException('Error!'));

      expect(() async => datasource.getAll('russelhue'), throwsException);
    });
  });

  group('doneTask method', () {
    test('should return void if request is successful', () async {
      when(() => service.updateTask('russelhue', '1', true))
          .thenAnswer((_) async {});

      expect(
        () async => datasource.doneTask('1', true, 'russelhue'),
        isA<void>(),
      );
    });

    test('should return CustomException if request is not successful',
        () async {
      when(() => service.updateTask('russelhue', '1', true))
          .thenThrow(CustomException('Error!'));

      expect(
        () async => datasource.doneTask('1', true, 'russelhue'),
        throwsException,
      );
    });
  });
}
