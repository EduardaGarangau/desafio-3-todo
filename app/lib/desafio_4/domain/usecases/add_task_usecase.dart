import 'package:app/desafio_4/domain/repositories/task_repository.dart';
import 'package:dartz/dartz.dart';
import '../../external/services/errors/custom_exceptions.dart';
import '../DTOs/task_dto.dart';

class AddTaskUsecase {
  final TaskRepository _repository;

  AddTaskUsecase(this._repository);

  Future<Either<CustomException, Unit>> call(
    TaskDTO task,
    String userId,
  ) async {
    return task.validator().fold(
          (l) => left(InvalidParamsException(l)),
          (r) => _repository.addTask(task, userId),
        );
  }
}
