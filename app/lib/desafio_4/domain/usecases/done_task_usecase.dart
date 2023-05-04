import 'package:app/desafio_4/domain/repositories/task_repository.dart';
import 'package:dartz/dartz.dart';

import '../errors/task_error.dart';

class DoneTaskUsecase {
  final TaskRepository _repository;

  DoneTaskUsecase(this._repository);

  Future<Either<TaskError, Unit>> call(
      String taskId, bool isDone, String userId) async {
    return _repository.doneTask(taskId, isDone, userId);
  }
}
