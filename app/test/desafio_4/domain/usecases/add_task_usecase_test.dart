import 'package:app/desafio_4/domain/DTOs/task_dto.dart';
import 'package:app/desafio_4/domain/errors/task_error.dart';
import 'package:app/desafio_4/domain/usecases/add_task_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../repositories/task_repository_mock.dart';

void main() {
  late TaskRepositoryMock repository;
  late AddTaskUsecase usecase;

  setUpAll(() {
    repository = TaskRepositoryMock();
    usecase = AddTaskUsecase(repository);
  });

  group('AddTaskUsecase <Unit>', () {
    test('should return unit', () async {
      final task = TaskDTO(title: 'Teste', date: DateTime.now(), done: false);

      when(() => repository.addTask(task)).thenAnswer((_) async => right(unit));

      final result = await usecase(task);

      result.fold((l) {
        expect(l, null);
      }, (r) {
        expect(r, isA<Unit>());
      });
    });
  });

  group('GetTasksUsecase <TaskError>', () {
    test('should return TaskFirestoreError', () async {
      final task = TaskDTO(title: 'Teste', date: DateTime.now(), done: false);

      when(() => repository.addTask(task))
          .thenThrow(TaskFirestoreError('Erro no Firestore'));

      final result = await usecase(task);

      result.fold(
        (l) {
          expect(l, isA<TaskFirestoreError>());
          expect(l.message, equals('Erro no Firestore'));
        },
        (r) => null,
      );
    });

    test('should return TaskUnknownError', () async {
      final task = TaskDTO(title: 'Teste', date: DateTime.now(), done: false);

      when(() => repository.addTask(task))
          .thenThrow(TaskUnknownError('Erro desconhecido'));

      final result = await usecase(task);

      result.fold(
        (l) {
          expect(l, isA<TaskUnknownError>());
          expect(l.message, equals('Erro desconhecido'));
        },
        (r) => null,
      );
    });
  });
}
