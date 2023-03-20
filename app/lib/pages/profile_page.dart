import 'package:app/widgets/profile_page/profile_card_widget.dart';
import 'package:app/widgets/profile_page/todo_form_widget.dart';
import 'package:app/widgets/profile_page/todos_list_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    void _openTodoFormModal(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return const TodoFormWidget();
        },
      );
    }

    return Scaffold(
      body: Column(
        children: const [
          ProfileCardWidget(),
          Expanded(
            child: TodosListWidget(),
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
