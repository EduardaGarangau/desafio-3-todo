import 'dart:convert';

import 'package:app/models/todo_model.dart';
import 'package:app/services/i_todo_service.dart';
import 'package:app/stores/todos_state.dart';
import 'package:flutter/material.dart';

class TodosStore extends ValueNotifier<TodosState> {
  List<TodoModel> _todos = [];
  final ITodoService _service;

  TodosStore(this._service) : super(InitialTodosState());

  Future<void> fetchTodos() async {
    final response = await _service.loadData('todos');

    if (response == null) {
      _todos = [];
    } else {
      _todos =
          response.map((todo) => TodoModel.fromMap(json.decode(todo))).toList();
      _sortedTodos();
    }
    value = SuccessTodosState(todos: _todos);
    notifyListeners();
  }

  Future<void> addTodo(TodoModel todo) async {
    _todos.add(todo);
    await _saveTodos();
  }

  Future<void> doneTodo(int todoId) async {
    final todo = _todos.firstWhere((element) => element.id == todoId);
    final index = _todos.indexOf(todo);
    todo.done = !todo.done;
    _todos[index] = todo;
    await _saveTodos();
  }

  Future<void> _saveTodos() async {
    final todosString = _todos.map((todo) => jsonEncode(todo.toMap())).toList();
    await _service.saveData('todos', todosString);
    await fetchTodos();
  }

  void _sortedTodos() {
    _todos.sort(
      (a, b) {
        final aDate = a.completeDate;
        final bDate = b.completeDate;
        return aDate.compareTo(bDate);
      },
    );
  }
}
