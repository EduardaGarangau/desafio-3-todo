import 'dart:ffi';

import 'package:app/desafio_4/domain/DTOs/task_dto.dart';
import 'package:app/desafio_4/domain/value_objects/title_vo.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
import 'package:app/desafio_4/infra/repositories/task_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../datasources/task_datasource_impl.dart';

void main() {
  late TaskDatasouceMock datasource;
  late TaskRepositoryImpl repository;

  setUpAll(() {
    datasource = TaskDatasouceMock();
    repository = TaskRepositoryImpl(datasource);
  });

  group('Tests in method getAllTasks', () {
    test('should return List<TaskEntity> if request is successful', () async {
      final response = [
        {
          'id': 'russelhue',
          'title': 'Test',
          'date': DateTime.now().toIso8601String(),
          'done': false,
        },
      ];

      when(() => datasource.getAll('russelhue'))
          .thenAnswer((_) async => response);

      final result = await repository.getAllTasks('russelhue');
      result.fold(
        (l) => null,
        (r) {
          expect(r.length, equals(1));
          expect(r, isNotEmpty);
        },
      );
    });

    test('should return CustomException if request is not successful',
        () async {
      final response = [
        {
          'id': 'russelhue',
          'title': 'Test',
          'date': DateTime.now().toIso8601String(),
          'done': false,
        },
      ];

      when(() => datasource.getAll('russelhue'))
          .thenThrow(CustomException('Error!'));

      final result = await repository.getAllTasks('russelhue');
      result.fold(
        (l) {
          expect(l, isA<CustomException>());
          expect(l.message, equals('Error!'));
        },
        (r) => null,
      );
    });
  });
}
