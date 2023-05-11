import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:dartz/dartz.dart';
import '../../external/services/errors/custom_exceptions.dart';
import '../repositories/task_repository.dart';

class GetTasksUsecase {
  final TaskRepository _repository;

  GetTasksUsecase(this._repository);

  Future<Either<CustomException, List<TaskEntity>>> call(String userId) async {
    return _repository.getAllTasks(userId);
  }
}
