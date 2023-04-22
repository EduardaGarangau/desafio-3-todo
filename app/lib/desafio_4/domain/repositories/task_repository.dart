import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:dartz/dartz.dart';

import '../DTOs/task_dto.dart';
import '../errors/task_error.dart';

abstract class TaskRepository {
  Future<Either<TaskError, Unit>> addTask(TaskDTO task);

  Future<Either<TaskError, List<TaskEntity>>> getAllTasks();

  Future<Either<TaskError, Unit>> doneTask(String taskId, bool isDone);
}
