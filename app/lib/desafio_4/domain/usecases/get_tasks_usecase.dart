import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:dartz/dartz.dart';

import '../errors/task_error.dart';
import '../repositories/task_repository.dart';

class GetTasksUsecase {
  final TaskRepository _repository;

  GetTasksUsecase(this._repository);

  Future<Either<TaskError, List<TaskEntity>>> call() async {
    try {
      final tasks = await _repository.getAllTasks();
      return tasks.fold(left, right);
    } on TaskError catch (e) {
      return left(e);
    }
  }
}
