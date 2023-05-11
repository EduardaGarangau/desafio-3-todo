import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
import 'package:app/desafio_4/infra/datasources/task_datasource.dart';
import 'package:app/desafio_4/infra/mappers/task_entity_mapper.dart';
import 'package:dartz/dartz.dart';
import '../../domain/DTOs/task_dto.dart';
import '../../domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskDatasource _datasource;

  TaskRepositoryImpl(this._datasource);

  @override
  Future<Either<CustomException, Unit>> addTask(
    TaskDTO task,
    String userId,
  ) async {
    try {
      final entityAsMap = TaskEntityMapper.toMap(task);
      await _datasource.addTask(entityAsMap, userId);
      return right(unit);
    } on CustomException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<CustomException, List<TaskEntity>>> getAllTasks(
    String userId,
  ) async {
    try {
      final documents = await _datasource.getAll(userId);
      return right(documents.docs.map(TaskEntityMapper.fromMap).toList());
    } on CustomException catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<CustomException, Unit>> doneTask(
    String taskId,
    bool isDone,
    String userId,
  ) async {
    try {
      await _datasource.doneTask(taskId, isDone, userId);
      return right(unit);
    } on CustomException catch (e) {
      return left(e);
    }
  }
}
