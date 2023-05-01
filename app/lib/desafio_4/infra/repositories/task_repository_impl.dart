import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:app/desafio_4/infra/datasources/task_datasource.dart';
import 'package:app/desafio_4/infra/mappers/task_entity_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import '../../domain/DTOs/task_dto.dart';
import '../../domain/errors/task_error.dart';
import '../../domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskDatasource _datasource;

  TaskRepositoryImpl(this._datasource);

  @override
  Future<Either<TaskError, Unit>> addTask(TaskDTO task) async {
    try {
      final entityAsMap = TaskEntityMapper.toMap(task);
      await _datasource.addTask(entityAsMap);
      return right(unit);
    } on FirebaseException catch (e) {
      return left(TaskFirestoreError(e.code));
    } catch (e) {
      return left(TaskUnknownError(e.toString()));
    }
  }

  @override
  Future<Either<TaskError, List<TaskEntity>>> getAllTasks() async {
    try {
      final documents = await _datasource.getAll();
      return right(documents.docs.map(TaskEntityMapper.fromMap).toList());
    } on FirebaseException catch (e) {
      return left(TaskFirestoreError(e.code));
    } catch (e) {
      return left(TaskUnknownError(e.toString()));
    }
  }

  @override
  Future<Either<TaskError, Unit>> doneTask(String taskId, bool isDone) async {
    try {
      await _datasource.doneTask(taskId, isDone);
      return right(unit);
      //TODO: try catch deve ser feito no service (FirebaseException) - GIT EXEMPLO
      // datasource não tem conhecimento disso
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(TaskNotFoundError('Task não encontrada'));
      }
      return left(TaskFirestoreError(e.code));
    } on TaskError catch (e) {
      return left(e);
    } catch (e) {
      //TODO: não usar catch genérico
      return left(TaskUnknownError(e.toString()));
    }
  }
}
