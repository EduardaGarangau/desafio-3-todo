import 'package:app/desafio_3/stores/todos_store.dart';
import 'package:app/desafio_3/widgets/profile_page/profile_card_widget.dart';
import 'package:app/desafio_3/widgets/profile_page/todo_form_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:design_system/widgets/todo_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../stores/todos_state.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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

    //todo tirar do build
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
                right: 10,
                left: 10,
              ),
              child: TodoCardWidget(
                title: todo.title,
                date: todo.getDate,
                time: todo.getTime,
                isDone: todo.done,
                isLate: todo.isLate,
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

    return Scaffold(
      body: Column(
        children: [
          const ProfileCardWidget(),
          child,
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: themeColors.profileBGColor,
        child: Icon(
          Icons.add,
          color: themeColors.whiteIconsColor,
        ),
        onPressed: () => _openTodoFormModal(context),
      ),
    );
  }
}
