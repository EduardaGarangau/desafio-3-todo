import 'package:app/desafio_4/domain/repositories/task_repository.dart';
import 'package:dartz/dartz.dart';

import '../DTOs/task_dto.dart';
import '../errors/task_error.dart';

class AddTaskUsecase {
  final TaskRepository _repository;

  AddTaskUsecase(this._repository);

  Future<Either<TaskError, Unit>> call(TaskDTO task) async {
    try {
      await _repository.addTask(task);
      return right(unit);
    } on TaskError catch (e) {
      return left(e);
    }
  }
}
