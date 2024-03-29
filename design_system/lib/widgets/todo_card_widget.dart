import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class TodoCardWidget extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final bool isDone;
  final bool isLate;
  final Function() onTap;
  final double height;
  final double width;

  const TodoCardWidget({
    required this.title,
    required this.date,
    required this.time,
    required this.isDone,
    required this.onTap,
    required this.isLate,
    this.height = 75,
    this.width = 300,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return Container(
      height: height,
      width: width,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(
        left: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isDone
            ? themeColors.taskDoneBGColor
            : themeColors.taskUndoneBGColor,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: height * 0.7,
              width: width * 0.15,
              decoration: BoxDecoration(
                border: Border.all(
                  color: themeColors.marginTaskColor,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(12),
                color: isDone
                    ? themeColors.taskButtonDoneColor
                    : themeColors.taskButtonUndoneColor,
              ),
              child: isDone
                  ? Icon(
                      Icons.check,
                      color: themeColors.blackIconsColor,
                    )
                  : null,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: themeTextStyle.taskTitleStyle,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    date,
                    style: themeTextStyle.taskDateStyle.copyWith(
                      color: isLate
                          ? themeColors.errorColor
                          : themeColors.greyTextColor,
                    ),
                  ),
                  const SizedBox(width: 2),
                  Text(
                    time,
                    style: themeTextStyle.taskDateStyle.copyWith(
                      color: isLate
                          ? themeColors.errorColor
                          : themeColors.greyTextColor,
                    ),
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
