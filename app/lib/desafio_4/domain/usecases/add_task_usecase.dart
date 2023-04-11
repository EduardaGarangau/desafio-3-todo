import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:app/desafio_4/domain/repositories/task_repository.dart';

class AddTaskUsecase {
  final TaskRepository repository;

  AddTaskUsecase(this.repository);

  Future<void> call(TaskEntity taskEntity) async {
    await repository.addTask(taskEntity);
  }
}
