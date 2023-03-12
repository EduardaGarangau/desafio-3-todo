import 'package:flutter/material.dart';

import '../design_system.dart';

class FilterButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String badgeNumber;
  final bool selected;

  const FilterButtonWidget({
    required this.icon,
    required this.title,
    required this.badgeNumber,
    required this.selected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final size = MediaQuery.of(context).size;

    return Container(
      constraints: BoxConstraints(
        minHeight: size.height * 0.06,
        minWidth: size.width * 0.08,
        maxWidth: size.width * 0.085,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: selected
            ? themeColors.filterButtonSelectedColor
            : themeColors.filterButtonUnselectedColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
          const SizedBox(width: 5),
          BadgeWidget(
            number: badgeNumber,
            selected: selected,
          ),
        ],
      ),
    );
  }
}
