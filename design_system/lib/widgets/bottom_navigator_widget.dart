import 'dart:ui';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BottomNavigatorWidget extends StatelessWidget {
  const BottomNavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: Container(
              height: size.height * 0.11,
              width: size.width,
              padding: const EdgeInsets.only(
                left: 20,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.almostBlack,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  IconButtonWidget(
                    icon: Icons.insert_drive_file_outlined,
                    selected: false,
                  ),
                  IconButtonWidget(
                    icon: Icons.person_outline_rounded,
                    selected: false,
                  ),
                  IconButtonWidget(
                    icon: Icons.insert_chart_outlined_rounded,
                    selected: false,
                  ),
                  IconButtonWidget(
                    icon: Icons.chat_outlined,
                    selected: true,
                  ),
                  IconButtonWidget(
                    icon: Icons.menu,
                    selected: false,
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
