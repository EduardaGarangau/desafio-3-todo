import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MessageInputWidget extends StatelessWidget {
  final double height;
  final double width;
  final double buttonHeight;
  final double buttonWidth;
  final bool isWebPlatform;

  const MessageInputWidget({
    this.width = 300,
    this.height = 70,
    this.isWebPlatform = false,
    this.buttonHeight = 10,
    this.buttonWidth = 10,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeFontStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return InputAndTodoContainer(
      height: height,
      width: width,
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
                size: height * 0.35,
              ),
              const SizedBox(width: 5),
              Transform.rotate(
                angle: 77,
                child: Icon(
                  Icons.link,
                  color: themeColors.whiteIconsColor,
                  size: height * 0.35,
                ),
              ),
              if (isWebPlatform) ...{
                Icon(
                  Icons.image_outlined,
                  color: themeColors.whiteIconsColor,
                  size: height * 0.35,
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.link,
                  color: themeColors.whiteIconsColor,
                  size: height * 0.35,
                ),
              },
              const SizedBox(width: 5),
              Container(
                height: height * 0.7,
                width: isWebPlatform ? width * 0.08 : width * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: themeColors.bottomNavButtonSelectedColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.send,
                      size: height * 0.35,
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
