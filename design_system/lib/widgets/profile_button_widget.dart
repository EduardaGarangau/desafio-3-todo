import 'package:flutter/material.dart';

import '../design_system.dart';

class ProfileButtonWidget extends StatelessWidget {
  final IconData icon;
  final bool isAvailable;

  const ProfileButtonWidget({
    required this.icon,
    required this.isAvailable,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Container(
      height: size.height * 0.08,
      width: size.height * 0.08,
      decoration: BoxDecoration(
        color: isAvailable
            ? themeColors.profileButtonAvailableColor
            : themeColors.profileButtonUnvailableColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        icon,
        size: 25,
        color: isAvailable
            ? themeColors.whiteIconsColor
            : themeColors.whiteIconsColor.withOpacity(0.6),
      ),
    );
  }
}
