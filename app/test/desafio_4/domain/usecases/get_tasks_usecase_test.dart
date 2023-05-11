import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:app/desafio_4/domain/usecases/get_tasks_usecase.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
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

      when(() => repository.getAllTasks('1'))
          .thenAnswer((_) async => right(tasksList));

      final tasks = await usecase('1');

      tasks.fold((l) {
        expect(l, null);
      }, (r) {
        expect(r.length, equals(1));
        expect(r[0].id, equals('1'));
        expect(r[0].title, equals('Teste'));
      });
    });
  });

  group('GetTasksUsecase <CustomException>', () {
    test('should return CustomException', () async {
      when(() => repository.getAllTasks('1')).thenAnswer(
          (_) async => left(CustomException('Erro!', StackTrace.current)));

      final tasks = await usecase('1');

      tasks.fold(
        (l) {
          expect(l, isA<CustomException>());
          expect(l.message, equals('Erro!'));
        },
        (r) => null,
      );
    });
  });
}
