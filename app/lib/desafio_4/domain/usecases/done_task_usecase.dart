import 'package:app/desafio_4/domain/repositories/task_repository.dart';
import 'package:dartz/dartz.dart';

import '../errors/task_error.dart';

class DoneTaskUsecase {
  final TaskRepository _repository;

  DoneTaskUsecase(this._repository);

  Future<Either<TaskError, Unit>> call(String taskId, bool isDone) async {
    try {
      await _repository.doneTask(taskId, isDone);
      return right(unit);
    } on TaskError catch (e) {
      return left(e);
    }
  }
}
