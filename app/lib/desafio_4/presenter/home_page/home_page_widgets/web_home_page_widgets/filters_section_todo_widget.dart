import 'package:design_system/shared/theme/extensions/theme_colors_extension.dart';
import 'package:design_system/widgets/todo_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../desafio_3/stores/todos_state.dart';
import '../../../../../desafio_3/stores/todos_store.dart';

class TodosWidget extends StatefulWidget {
  const TodosWidget({super.key});

  @override
  State<TodosWidget> createState() => _TodosWidgetState();
}

class _TodosWidgetState extends State<TodosWidget> {
  @override
  void initState() {
    super.initState();
    context.read<TodosStore>().fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final store = context.watch<TodosStore>();
    final state = store.value;
    late Widget child;

    if (state is SuccessTodosState) {
      child = Expanded(
        child: ListView.builder(
          itemCount: state.todos.length,
          itemBuilder: (context, index) {
            final todo = state.todos[index];

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
                isLate: todo.isLate,
                isWebPlatform: false,
                onTap: () => store.doneTodo(todo.id),
              ),
            );
          },
        ),
      );
    } else {
      child = Center(
        child: CircularProgressIndicator(
          color: themeColors.profileBGColor,
        ),
      );
    }

    return child;
  }
}
