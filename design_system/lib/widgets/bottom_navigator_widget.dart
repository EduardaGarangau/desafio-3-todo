import 'dart:ui';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BottomNavigatorWidget extends StatelessWidget {
  final double height;
  final double width;

  const BottomNavigatorWidget({
    super.key,
    this.height = 150,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: Container(
              height: height,
              width: width,
              padding: const EdgeInsets.only(
                left: 20,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: themeColors.bottomNavigatorColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  IconButtonWidget(
                    icon: Icons.insert_drive_file_outlined,
                    selected: false,
                    isWebPlatform: false,
                  ),
                  IconButtonWidget(
                    icon: Icons.person_outline_rounded,
                    selected: false,
                    isWebPlatform: false,
                  ),
                  IconButtonWidget(
                    icon: Icons.insert_chart_outlined_rounded,
                    selected: false,
                    isWebPlatform: false,
                  ),
                  IconButtonWidget(
                    icon: Icons.chat_outlined,
                    selected: true,
                    isWebPlatform: false,
                  ),
                  IconButtonWidget(
                    icon: Icons.menu,
                    selected: false,
                    isWebPlatform: false,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
