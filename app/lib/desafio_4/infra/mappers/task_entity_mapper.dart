import 'package:app/desafio_4/domain/DTOs/task_dto.dart';
import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TaskEntityMapper {
  TaskEntityMapper._();

  static TaskEntity fromMap(DocumentSnapshot document) {
    // ignore: cast_nullable_to_non_nullable
    final documentData = document.data() as Map;

    return TaskEntity(
      id: document.id,
      title: documentData['title'] as String,
      date: DateTime.parse(documentData['date']),
      done: documentData['done'] as bool,
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
