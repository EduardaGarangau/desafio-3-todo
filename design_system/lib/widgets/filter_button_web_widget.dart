import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class FilterButtonWebWidget extends StatelessWidget
    implements FilterButtonWidget {
  final IconData icon;
  final String title;
  final bool selected;
  final double height;
  final double width;
  final String? badgeNumber;

  const FilterButtonWebWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.selected,
    required this.height,
    required this.width,
    required this.badgeNumber,
  });

  @override
  Widget build(BuildContext context) {
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return UnconstrainedBox(
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: selected
              ? themeColors.filterButtonSelectedColor
              : themeColors.filterButtonUnselectedColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 25,
                  color: selected
                      ? themeColors.blackIconsColor
                      : themeColors.greyIconsColor,
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: selected
                      ? themeTextStyle.filterButtonSelectedTextStyle
                      : themeTextStyle.filterButtonUnselectedTextStyle,
                ),
              ],
            ),
            Text(
              badgeNumber ?? '',
              style: selected
                  ? themeTextStyle.filterButtonSelectedTextStyle
                  : themeTextStyle.filterButtonUnselectedTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
