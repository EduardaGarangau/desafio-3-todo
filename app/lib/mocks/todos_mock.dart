import 'package:app/models/todo_model.dart';
import 'package:flutter/material.dart';

class TodoMocks {
  static List<TodoModel> todos = [
    TodoModel(
      id: 1,
      title: 'Interview with Lead Designer',
      time: TimeOfDay.now(),
      date: DateTime.now(),
    ),
    TodoModel(
      id: 2,
      title: 'Interview with CTO',
      time: TimeOfDay.now(),
      date: DateTime.now(),
    ),
    TodoModel(
      id: 3,
      title: 'Finish Test Project',
      time: TimeOfDay.now(),
      date: DateTime.now(),
    ),
    TodoModel(
      id: 4,
      title: 'Finish Test Project2',
      time: TimeOfDay.now(),
      date: DateTime.now(),
    ),
  ];
}
