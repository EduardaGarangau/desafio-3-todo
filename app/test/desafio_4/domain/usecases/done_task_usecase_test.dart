import 'package:app/desafio_4/domain/errors/task_error.dart';
import 'package:app/desafio_4/domain/usecases/done_task_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../repositories/task_repository_mock.dart';

void main() {
  late TaskRepositoryMock repository;
  late DoneTaskUsecase usecase;

  setUpAll(() {
    repository = TaskRepositoryMock();
    usecase = DoneTaskUsecase(repository);
  });

  group('DoneTaskUsecase <Unit>', () {
    test('should return unit', () async {
      when(() => repository.doneTask('1', true))
          .thenAnswer((_) async => right(unit));

      final result = await usecase('1', true);

      result.fold((l) {
        expect(l, null);
      }, (r) {
        expect(r, isA<Unit>());
      });
    });
  });

  group('DoneTaskUsecase <TaskError>', () {
    test('should return TaskFirestoreError', () async {
      when(() => repository.doneTask('1', true))
          .thenThrow(TaskFirestoreError('Erro no Firestore'));

      final result = await usecase('1', true);

      result.fold(
        (l) {
          expect(l, isA<TaskFirestoreError>());
          expect(l.message, equals('Erro no Firestore'));
        },
        (r) => null,
      );
    });

    test('should return TaskNotFoundError', () async {
      when(() => repository.doneTask('1', true))
          .thenThrow(TaskNotFoundError('Task não encontrada'));

      final result = await usecase('1', true);

      result.fold(
        (l) {
          expect(l, isA<TaskNotFoundError>());
          expect(l.message, equals('Task não encontrada'));
        },
        (r) => null,
      );
    });

    test('should return TaskUnknownError', () async {
      when(() => repository.doneTask('1', true))
          .thenThrow(TaskUnknownError('Erro desconhecido'));

      final result = await usecase('1', true);

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
