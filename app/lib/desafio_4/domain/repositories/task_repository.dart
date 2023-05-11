// ignore_for_file: avoid_positional_boolean_parameters

import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:dartz/dartz.dart';

import '../../external/services/errors/custom_exceptions.dart';
import '../DTOs/task_dto.dart';

abstract class TaskRepository {
  Future<Either<CustomException, Unit>> addTask(TaskDTO task, String userId);

  Future<Either<CustomException, List<TaskEntity>>> getAllTasks(String userId);

  Future<Either<CustomException, Unit>> doneTask(
    String taskId,
    bool isDone,
    String userId,
  );
}
