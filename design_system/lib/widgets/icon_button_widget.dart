import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../design_system.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final bool selected;

  const IconButtonWidget({
    required this.icon,
    required this.selected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Container(
      height: size.height * 0.07,
      width: size.width * 0.04,
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
            size: 28,
            color: selected
                ? themeColors.blackIconsColor
                : themeColors.greyIconsColor,
          ),
        ],
      ),
    );
  }
}
