import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_card_widget.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/todo_form_widget.dart';
import 'package:app/desafio_4/presenter/stores/tasks_store.dart';
import 'package:design_system/design_system.dart';
import 'package:design_system/widgets/todo_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
    // TODO: fazer essa store por injeção
    final store = context.watch<TasksStore>();

    return Scaffold(
      body: Column(
        children: [
          const ProfileCardWidget(),
          ScopedBuilder<TasksStore, List<TaskEntity>>(
            store: store,
            onLoading: (context) => Expanded(
              child: Center(
                child: CircularProgressIndicator(
                  color: themeColors.profileBGColor,
                ),
              ),
            ),
            onError: (context, error) => Text(error),
            onState: (context, state) => Expanded(
              child: ListView.builder(
                itemCount: state.length,
                itemBuilder: (context, index) {
                  final task = state[index];

                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 10,
                      left: 10,
                    ),
                    child: TodoCardWidget(
                      title: task.title,
                      date: task.getDate,
                      time: task.getTime,
                      isDone: task.done,
                      isLate: task.isLate,
                      height: size.height * 0.08,
                      width: size.width * 0.86,
                      onTap: () {
                        final updatedTask = task.copyWith(done: !task.done);
                        store.doneTask(updatedTask.id, updatedTask.done);
                      },
                    ),
                  );
                },
              ),
            ),
          ),
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
