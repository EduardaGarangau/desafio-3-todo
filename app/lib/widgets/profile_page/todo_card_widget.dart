import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/todo_model.dart';

class TodoCardWidget extends StatelessWidget {
  const TodoCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final todo = Provider.of<TodoModel>(context, listen: false);

    return Container(
      height: size.height * 0.08,
      width: size.width * 0.86,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(
        left: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: todo.done
            ? themeColors.taskDoneBGColor
            : themeColors.taskUndoneBGColor,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () => todo.toggleDone(),
            borderRadius: BorderRadius.circular(12),
            child: Consumer<TodoModel>(
              builder: (context, todo, _) => Container(
                height: size.height * 0.05,
                width: size.width * 0.11,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: themeColors.marginTaskColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: todo.done
                      ? themeColors.taskButtonDoneColor
                      : themeColors.taskButtonUndoneColor,
                ),
                child: todo.done
                    ? Icon(
                        Icons.check,
                        color: themeColors.blackIconsColor,
                      )
                    : null,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                todo.title,
                style: themeTextStyle.taskTitleStyle,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    todo.getDate,
                    style: themeTextStyle.taskDateStyle,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    todo.getTime,
                    style: themeTextStyle.taskDateStyle,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}