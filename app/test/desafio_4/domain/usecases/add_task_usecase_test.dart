import 'package:app/desafio_4/domain/DTOs/task_dto.dart';
import 'package:app/desafio_4/domain/usecases/add_task_usecase.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
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

      when(() => repository.addTask(task, '1'))
          .thenAnswer((_) async => right(unit));

      final result = await usecase(task, '1');

      result.fold((l) {
        expect(l, null);
      }, (r) {
        expect(r, isA<Unit>());
      });
    });
  });

  group('GetTasksUsecase <ServiceException>', () {
    test('should return ServiceException', () async {
      final task = TaskDTO(title: 'Teste', date: DateTime.now(), done: false);

      when(() => repository.addTask(task, '1')).thenAnswer(
        (_) async => left(ServiceException('Error', StackTrace.current)),
      );

      final result = await usecase(task, '1');

      result.fold(
        (l) {
          expect(l, isA<ServiceException>());
          expect(l.message, equals('Error'));
        },
        (r) => null,
      );
    });
  });
}
