import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MessageInputWidget extends StatelessWidget {
  const MessageInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeFontStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return InputAndTodoContainer(
      child: Row(
        children: [
          Text(
            'Fantastic! Lets do it!',
            style: themeFontStyle.messageContentTextStyle.copyWith(
              color: themeColors.whiteTextColor,
            ),
          ),
          const SizedBox(width: 50),
          Icon(
            Icons.emoji_emotions_outlined,
            color: themeColors.whiteIconsColor,
            size: 25,
          ),
          const SizedBox(width: 5),
          Transform.rotate(
            angle: 77,
            child: Icon(
              Icons.link,
              color: themeColors.whiteIconsColor,
              size: 25,
            ),
          ),
          const SizedBox(width: 10),
          const IconButtonWidget(
            icon: Icons.send,
            selected: true,
          ),
        ],
      ),
    );
  }
}
