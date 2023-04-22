import 'package:design_system/shared/theme/extensions/theme_colors_extension.dart';
import 'package:design_system/widgets/todo_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../../../../desafio_3/stores/todos_state.dart';
import '../../../../../desafio_3/stores/todos_store.dart';
import '../../../../domain/entities/task_entity.dart';
import '../../../profile_page/profile_page_widgets/todo_form_widget.dart';
import '../../../stores/tasks_store.dart';

class TodosWebWidget extends StatefulWidget {
  const TodosWebWidget({super.key});

  @override
  State<TodosWebWidget> createState() => _TodosWebWidgetState();
}

class _TodosWebWidgetState extends State<TodosWebWidget> {
  @override
  void initState() {
    super.initState();
    context.read<TasksStore>().getAllTasks();
  }

  void _openTodoFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const TodoFormWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final store = context.watch<TasksStore>();

    return ScopedBuilder<TasksStore, List<TaskEntity>>(
      store: store,
      onLoading: (context) => Expanded(
        child: Center(
          child: CircularProgressIndicator(
            color: themeColors.profileBGColor,
          ),
        ),
      ),
      onError: (context, error) => Text(error.toString()),
      onState: (context, state) => Expanded(
        child: ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) {
            final task = state[index];

            return Padding(
              padding: const EdgeInsets.only(
                top: 15,
                right: 20,
                left: 20,
              ),
              child: TodoCardWidget(
                title: task.title,
                date: task.getDate,
                time: task.getTime,
                isDone: task.done,
                isLate: task.isLate,
                height: size.height * 0.08,
                width: size.width * 0.2,
                onTap: () {
                  final updatedTask = task.copyWith(done: !task.done);
                  store.doneTask(updatedTask.id, updatedTask.done);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
