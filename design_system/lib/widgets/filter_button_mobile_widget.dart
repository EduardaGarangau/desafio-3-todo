import 'package:flutter/material.dart';

import '../design_system.dart';

class FilterButtonMobileWidget extends StatelessWidget
    implements FilterButtonWidget {
  final IconData icon;
  final String title;
  final String? badgeNumber;
  final bool selected;
  final double height;

  const FilterButtonMobileWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.selected,
    required this.height,
    this.badgeNumber,
  });

  @override
  Widget build(BuildContext context) {
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return UnconstrainedBox(
      child: Container(
        height: height,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: height * 0.55,
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
              number: badgeNumber ?? ' ',
              selected: selected,
            ),
          ],
        ),
      ),
    );
  }
}
