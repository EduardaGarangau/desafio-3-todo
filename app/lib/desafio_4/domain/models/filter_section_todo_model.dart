import 'package:app/desafio_4/domain/models/todo_model.dart';

class FilterSectionTodoModel {
  final String title;
  final List<TodoModel> todos;

  FilterSectionTodoModel({
    required this.title,
    required this.todos,
  });
}
