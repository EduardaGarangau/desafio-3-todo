import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BottomNavigatorWidget extends StatelessWidget {
  const BottomNavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.1,
      width: size.width,
      padding: const EdgeInsets.only(
        left: 20,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.2),
            Colors.black,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ButtonWidget(
            icon: Icons.insert_drive_file_outlined,
            text: null,
            selected: false,
            badgeNumber: null,
          ),
          ButtonWidget(
            icon: Icons.person_outline_rounded,
            text: null,
            selected: false,
            badgeNumber: null,
          ),
          ButtonWidget(
            icon: Icons.insert_chart_outlined_rounded,
            text: null,
            selected: false,
            badgeNumber: null,
          ),
          ButtonWidget(
            icon: Icons.chat_outlined,
            text: null,
            selected: true,
            badgeNumber: null,
          ),
          ButtonWidget(
            icon: Icons.menu,
            text: null,
            selected: false,
            badgeNumber: null,
          ),
        ],
      ),
    );
  }
}
