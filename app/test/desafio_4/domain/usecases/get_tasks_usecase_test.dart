import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:app/desafio_4/domain/errors/task_error.dart';
import 'package:app/desafio_4/domain/usecases/get_tasks_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../repositories/task_repository_mock.dart';

void main() {
  late TaskRepositoryMock repository;
  late GetTasksUsecase usecase;

  setUpAll(() {
    repository = TaskRepositoryMock();
    usecase = GetTasksUsecase(repository);
  });

  group('GetTasksUsecase <TaskEntity>', () {
    test('should return List of Tasks', () async {
      final tasksList = [
        TaskEntity(id: '1', title: 'Teste', date: DateTime.now(), done: false)
      ];

      when(() => repository.getAllTasks())
          .thenAnswer((_) async => right(tasksList));

      final tasks = await usecase();

      tasks.fold((l) {
        expect(l, null);
      }, (r) {
        expect(r.length, equals(1));
        expect(r[0].id, equals('1'));
        expect(r[0].title, equals('Teste'));
      });
    });
  });

  group('GetTasksUsecase <TaskError>', () {
    test('should return TaskFirestoreError', () async {
      when(() => repository.getAllTasks())
          .thenThrow(TaskFirestoreError('Erro no Firestore'));

      final tasks = await usecase();

      tasks.fold(
        (l) {
          expect(l, isA<TaskFirestoreError>());
          expect(l.message, equals('Erro no Firestore'));
        },
        (r) => null,
      );
    });

    test('should return TaskUnknownError', () async {
      when(() => repository.getAllTasks())
          .thenThrow(TaskUnknownError('Erro desconhecido!'));

      final tasks = await usecase();

      tasks.fold(
        (l) {
          expect(l, isA<TaskUnknownError>());
          expect(l.message, equals('Erro desconhecido!'));
        },
        (r) => null,
      );
    });
  });
}
