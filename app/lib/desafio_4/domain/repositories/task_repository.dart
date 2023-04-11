import 'package:app/desafio_4/domain/entities/task_entity.dart';

abstract class TaskRepository {
  Future<void> addTask(TaskEntity taskEntity);

  Future<List<TaskEntity>> getAllTasks();
}
