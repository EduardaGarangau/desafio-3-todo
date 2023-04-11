import 'package:app/desafio_4/domain/entities/task_entity.dart';

import '../repositories/task_repository.dart';

class GetTasksUsecase {
  final TaskRepository repository;

  GetTasksUsecase(this.repository);

  Future<List<TaskEntity>> call() async {
    return repository.getAllTasks();
  }
}
