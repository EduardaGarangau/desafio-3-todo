import 'package:app/desafio_4/domain/usecases/done_task_usecase.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
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
      when(() => repository.doneTask('1', true, '1'))
          .thenAnswer((_) async => right(unit));

      final result = await usecase('1', true, '1');

      result.fold((l) {
        expect(l, null);
      }, (r) {
        expect(r, isA<Unit>());
      });
    });
  });

  group('DoneTaskUsecase <ServiceException>', () {
    test('should return ServiceException', () async {
      when(() => repository.doneTask('1', true, '1')).thenAnswer(
        (_) async => left(ServiceException('Erro!', StackTrace.current)),
      );

      final result = await usecase('1', true, '1');

      result.fold(
        (l) {
          expect(l, isA<ServiceException>());
          expect(l.message, equals('Erro!'));
        },
        (r) => null,
      );
    });
  });
}
