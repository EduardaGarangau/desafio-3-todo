// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../desafio_4/domain/models/todo_model.dart';

abstract class TodosState {}

class InitialTodosState extends TodosState {}

class SuccessTodosState extends TodosState {
  final List<TodoModel> todos;

  SuccessTodosState({required this.todos});
}
