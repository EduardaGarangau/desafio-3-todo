import 'dart:ffi';

import 'package:app/desafio_4/domain/DTOs/task_dto.dart';
import 'package:app/desafio_4/domain/value_objects/title_vo.dart';
import 'package:app/desafio_4/infra/repositories/task_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../datasources/task_datasource_mock.dart';

void main() {
  late TaskDatasouceMock datasource;
  late TaskRepositoryImpl repository;

  setUpAll(() {
    datasource = TaskDatasouceMock();
    repository = TaskRepositoryImpl(datasource);
  });

  group('addTask method', () {
    test('should return unit if request is successful', () async {
      final map = {
        'title': 'Test',
        'date': DateTime.now().toIso8601String(),
        'done': false,
      };

      final task = TaskDTO(
        title: TitleVO('Test'),
        date: DateTime.now(),
        done: false,
      );

      when(() => datasource.addTask(map, 'russelhue')).thenAnswer((_) async {});

      expect(() async => repository.addTask(task, 'russelhue'), isA<Unit>());
    });
  });
}
