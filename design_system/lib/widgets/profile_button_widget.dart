import 'package:flutter/material.dart';

import '../design_system.dart';

class ProfileButtonWidget extends StatelessWidget {
  final IconData icon;
  final bool isAvailable;
  final double buttonHeight;
  final double buttonWidth;
  final double roundedBorderSize;

  const ProfileButtonWidget({
    required this.icon,
    required this.isAvailable,
    this.buttonHeight = 50,
    this.buttonWidth = 50,
    this.roundedBorderSize = 20,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Container(
      height: buttonHeight,
      width: buttonWidth,
      decoration: BoxDecoration(
        color: isAvailable
            ? themeColors.profileButtonAvailableColor
            : themeColors.profileButtonUnvailableColor,
        borderRadius: BorderRadius.circular(roundedBorderSize),
      ),
      child: Icon(
        icon,
        size: buttonHeight * 0.8,
        color: isAvailable
            ? themeColors.whiteIconsColor
            : themeColors.whiteIconsColor.withOpacity(0.6),
      ),
    );
  }
}
