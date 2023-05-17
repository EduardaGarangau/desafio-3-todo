import 'package:app/desafio_4/domain/DTOs/task_dto.dart';
import 'package:app/desafio_4/domain/entities/task_entity.dart';

class TaskEntityMapper {
  TaskEntityMapper._();

  static TaskEntity fromMap(Map<String, dynamic> map) {
    return TaskEntity(
      id: map['id'] as String,
      title: map['title'] as String,
      date: DateTime.parse(map['date']),
      done: map['done'] as bool,
    );
  }

  static Map<String, dynamic> toMap(TaskDTO task) {
    return <String, dynamic>{
      'title': task.title.value,
      'date': task.date.toIso8601String(),
      'done': task.done,
    };
  }
}
