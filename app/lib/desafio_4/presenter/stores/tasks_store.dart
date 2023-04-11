import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:app/desafio_4/domain/repositories/task_repository.dart';
import 'package:flutter_triple/flutter_triple.dart';

class TasksStore extends Store<List<TaskEntity>> {
  final TaskRepository _repository;

  TasksStore(this._repository) : super([]);

  Future<void> getAllTasks() async {
    setLoading(true);
    try {
      final tasks = await _repository.getAllTasks();
      state
        ..clear()
        ..addAll(tasks);
      update(tasks);
      setLoading(false);
    } catch (e) {
      setError(Exception(e.toString()));
    }
  }

  Future<void> addTask(TaskEntity taskEntity) async {
    setLoading(true);
    try {
      await _repository.addTask(taskEntity);
      await getAllTasks();
      setLoading(false);
    } catch (e) {
      setError(Exception(e.toString()));
    }
  }
}
