import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:app/desafio_4/domain/usecases/add_task_usecase.dart';
import 'package:app/desafio_4/domain/usecases/done_task_usecase.dart';
import 'package:app/desafio_4/domain/usecases/get_tasks_usecase.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../domain/DTOs/task_dto.dart';

class TasksStore extends Store<List<TaskEntity>> {
  final AddTaskUsecase _addTaskUsecase;
  final GetTasksUsecase _getTasksUsecase;
  final DoneTaskUsecase _doneTaskUsecase;

  TasksStore(
    this._addTaskUsecase,
    this._getTasksUsecase,
    this._doneTaskUsecase,
  ) : super([]);

  Future<void> getAllTasks() async {
    setLoading(true);

    final tasks = await _getTasksUsecase();
    tasks.fold(
      setError,
      (r) {
        r.sort((a, b) => a.date.compareTo(b.date));
        update(r);
      },
    );
  }

  Future<void> addTask(TaskDTO task) async {
    setLoading(true);
    final result = await _addTaskUsecase(task);
    result.fold(setError, (r) async {
      await getAllTasks();
    });
  }

  Future<void> doneTask(String taskId, bool isDone) async {
    setLoading(true);
    final result = await _doneTaskUsecase(taskId, isDone);
    result.fold(setError, (r) async {
      await getAllTasks();
    });
  }
}
