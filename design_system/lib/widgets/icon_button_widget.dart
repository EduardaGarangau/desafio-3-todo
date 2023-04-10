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
    late Widget widgetByPlatform;

    if (isWebPlatform) {
      widgetByPlatform = Container(
        height: size.height * 0.25,
        constraints: BoxConstraints(
          minWidth: size.width * 0.007,
        ),
        child: Column(
          children: [
            const SizedBox(height: 87),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 24,
                  color: selected
                      ? themeColors.appBarButtonWeb
                      : themeColors.greyIconsColor,
                ),
                const SizedBox(width: 8),
                Text(
                  title!,
                  style: themeTextStyles.abilityTextStyle.copyWith(
                    fontSize: 15,
                    color: selected
                        ? themeColors.filterButtonSelectedColor
                        : themeColors.greyTextColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      widgetByPlatform = Container(
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

    return widgetByPlatform;
  }
}
