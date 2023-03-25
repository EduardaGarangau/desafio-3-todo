import 'package:flutter/material.dart';

import '../design_system.dart';

class WebHeaderIconWidget extends StatelessWidget {
  final IconData icon;
  final bool hasNotifications;

  const WebHeaderIconWidget({
    required this.icon,
    required this.hasNotifications,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return SizedBox(
      height: size.height * 0.14,
      width: size.width * 0.03,
      child: Center(
        child: SizedBox(
          width: size.width * 0.02,
          child: Stack(
            children: [
              Icon(
                icon,
                size: 28,
                color: themeColors.whiteIconsColor,
              ),
              if (hasNotifications)
                const Positioned(
                  left: 20,
                  child: OnlineFlagWidget(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
