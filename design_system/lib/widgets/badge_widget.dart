import 'package:flutter/material.dart';

import '../design_system.dart';

class BadgeWidget extends StatelessWidget {
  final bool selected;
  final String number;

  const BadgeWidget({
    required this.number,
    required this.selected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return CircleAvatar(
      radius: 12,
      backgroundColor: selected
          ? themeColors.badgeSelectedColor
          : themeColors.badgeUnselectedColor,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Center(
          child: Text(
            number,
            style: themeTextStyle.badgeTextStyle,
          ),
        ),
      ),
    );
  }
}
