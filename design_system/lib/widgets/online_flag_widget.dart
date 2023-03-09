import 'package:flutter/material.dart';

import '../design_system.dart';

class OnlineFlagWidget extends StatelessWidget {
  const OnlineFlagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Container(
      width: 9,
      height: 9,
      decoration: BoxDecoration(
        color: themeColor.onlineColor,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
