import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskEntityMapper {
  TaskEntityMapper._();

  static TaskEntity fromMap(Map<String, dynamic> map) {
    final dateTime = DateFormat('HH:mm').parse(map['time']);
    final time = TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);

    return TaskEntity(
      id: map['id'] as String,
      title: map['title'] as String,
      time: time,
      date: DateTime.parse(map['date']),
      done: map['done'] as bool,
    );
  }

  static Map<String, dynamic> toMap(TaskEntity entity) {
    return <String, dynamic>{
      'id': entity.id,
      'title': entity.title,
      'time': '${entity.time.hour}:${entity.time.minute}',
      'date': entity.date.toIso8601String(),
      'done': entity.done,
    };
  }
}
