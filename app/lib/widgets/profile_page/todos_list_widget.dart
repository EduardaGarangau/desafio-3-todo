import 'package:app/mocks/todos_mock.dart';
import 'package:design_system/widgets/todo_card_widget.dart';
import 'package:flutter/material.dart';

class TodosListWidget extends StatelessWidget {
  const TodosListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = TodoMocks.todos;

    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];

        return Padding(
          padding: const EdgeInsets.only(
            top: 15,
            right: 10,
            left: 10,
          ),
          child: TodoCardWidget(
            title: todo.title,
            date: todo.getDate,
            time: todo.getTime,
            isDone: todo.done,
            onTap: () {}, //TODO
          ),
        );
      },
    );
  }
}
