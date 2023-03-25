import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MessageInputWidget extends StatelessWidget {
  final bool isWebPlatform;

  const MessageInputWidget({
    required this.isWebPlatform,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeFontStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return InputAndTodoContainer(
      width: isWebPlatform ? size.width * 0.3 : size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Fantastic! Lets do it!',
            style: themeFontStyle.messageContentTextStyle.copyWith(
              color: themeColors.whiteTextColor,
            ),
          ),
          Row(
            children: [
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
              if (isWebPlatform) ...{
                Icon(
                  Icons.image_outlined,
                  color: themeColors.whiteIconsColor,
                  size: 25,
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.link,
                  color: themeColors.whiteIconsColor,
                  size: 25,
                ),
              },
              const SizedBox(width: 5),
              Container(
                height: size.height * 0.05,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: themeColors.bottomNavButtonSelectedColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.send,
                      size: 23,
                      color: themeColors.blackIconsColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
