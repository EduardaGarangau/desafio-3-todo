import 'package:app/desafio_4/mocks/profile_buttons_mocks.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileButtonsListWidget extends StatelessWidget {
  final bool isWebPlatform;

  const ProfileButtonsListWidget({
    required this.isWebPlatform,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final profileButtons = ProfileButtonsMocks.profileButtons;
    final size = MediaQuery.of(context).size;

    return Container(
      height: isWebPlatform ? size.height * 0.05 : size.height * 0.065,
      width: isWebPlatform ? size.width * 0.3 : size.width,
      padding: isWebPlatform
          ? null
          : const EdgeInsets.only(
              right: 40,
              left: 40,
            ),
      child: ListView.separated(
        separatorBuilder: (context, index) =>
            SizedBox(width: isWebPlatform ? 10 : 20),
        scrollDirection: Axis.horizontal,
        itemCount: profileButtons.length,
        itemBuilder: (context, index) {
          return ProfileButtonWidget(
            icon: profileButtons[index].icon,
            isAvailable: profileButtons[index].isAvailable,
            isWebPlatform: isWebPlatform,
          );
        },
      ),
    );
  }
}
