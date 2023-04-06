import 'package:design_system/shared/theme/extensions/theme_colors_extension.dart';
import 'package:design_system/widgets/todo_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../desafio_3/stores/todos_state.dart';
import '../../../../../desafio_3/stores/todos_store.dart';
import '../../../profile_page/profile_page_widgets/todo_form_widget.dart';

class TodosWebWidget extends StatefulWidget {
  const TodosWebWidget({super.key});

  @override
  State<TodosWebWidget> createState() => _TodosWebWidgetState();
}

class _TodosWebWidgetState extends State<TodosWebWidget> {
  @override
  void initState() {
    super.initState();
    context.read<TodosStore>().fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final store = context.watch<TodosStore>();
    final state = store.value;
    late Widget child;

    void _openTodoFormModal(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return const TodoFormWidget();
        },
      );
    }

    if (state is SuccessTodosState) {
      child = Expanded(
        child: ListView.builder(
          itemCount: state.todos.length,
          itemBuilder: (context, index) {
            final todo = state.todos[index];

            return Padding(
              padding: const EdgeInsets.only(
                top: 15,
                right: 20,
                left: 20,
              ),
              child: TodoCardWidget(
                title: todo.title,
                date: todo.getDate,
                time: todo.getTime,
                isDone: todo.done,
                isLate: todo.isLate,
                height: size.height * 0.08,
                width: size.width * 0.2,
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
