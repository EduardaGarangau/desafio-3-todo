import 'package:app/mocks/profile_buttons_mocks.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileButtonsListWidget extends StatelessWidget {
  const ProfileButtonsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final profileButtons = ProfileButtonsMocks.profileButtons;
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.065,
      width: size.width,
      padding: const EdgeInsets.only(
        right: 40,
        left: 40,
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        scrollDirection: Axis.horizontal,
        itemCount: profileButtons.length,
        itemBuilder: (context, index) {
          return ProfileButtonWidget(
            icon: profileButtons[index].icon,
            isAvailable: profileButtons[index].isAvailable,
          );
        },
      ),
    );
  }
}
