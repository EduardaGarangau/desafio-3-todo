import 'package:flutter/material.dart';
import '../design_system.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final String? title;
  final bool selected;
  final bool isWebPlatform;

  const IconButtonWidget({
    required this.icon,
    required this.selected,
    required this.isWebPlatform,
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyles = Theme.of(context).extension<TextStyleExtension>()!;

    return isWebPlatform
        ? Container(
            height: size.height * 0.14,
            constraints: BoxConstraints(
              minWidth: size.width * 0.007,
            ),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.01,
                  decoration: BoxDecoration(
                    color: selected
                        ? themeColors.bottomNavButtonSelectedColor
                        : themeColors.bottomNavButtonUnselectedColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      size: 27,
                      color: selected
                          ? themeColors.yellowTextColor
                          : themeColors.greyIconsColor,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      title!,
                      style: themeTextStyles.abilityTextStyle.copyWith(
                        fontSize: 18,
                        color: selected
                            ? themeColors.yellowTextColor
                            : themeColors.greyTextColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        : Container(
            height: size.height * 0.06,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: selected
                  ? themeColors.bottomNavButtonSelectedColor
                  : themeColors.bottomNavButtonUnselectedColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 26,
                  color: selected
                      ? themeColors.blackIconsColor
                      : themeColors.greyIconsColor,
                ),
              ],
            ),
          );
  }
}
