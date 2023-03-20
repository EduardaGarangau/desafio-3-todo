import 'package:app/mocks/todos_mock.dart';
import 'package:app/widgets/profile_page/todo_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodosListWidget extends StatelessWidget {
  const TodosListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = TodoMocks.todos;

    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return ChangeNotifierProvider.value(
          value: todos[index],
          child: const Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            child: TodoCardWidget(),
          ),
        );
      },
    );
  }
}
