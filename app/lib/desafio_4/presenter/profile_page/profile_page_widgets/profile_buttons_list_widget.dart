import 'package:app/desafio_4/mocks/profile_buttons_mocks.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileButtonsListWidget extends StatelessWidget {
  final double height;
  final double width;
  final double? paddingLeftRight;
  final double buttonsSpacing;
  final double buttonsHeight;
  final double buttonsWidth;
  final double roundedBorderSize;

  const ProfileButtonsListWidget({
    this.height = 50,
    this.width = double.infinity,
    this.paddingLeftRight = 60,
    this.buttonsSpacing = 20,
    this.buttonsHeight = 50,
    this.buttonsWidth = 55,
    this.roundedBorderSize = 20,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final profileButtons = ProfileButtonsMocks.profileButtons;

    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.only(
        right: paddingLeftRight!,
        left: paddingLeftRight!,
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: buttonsSpacing),
        scrollDirection: Axis.horizontal,
        itemCount: profileButtons.length,
        itemBuilder: (context, index) {
          return ProfileButtonWidget(
            icon: profileButtons[index].icon,
            isAvailable: profileButtons[index].isAvailable,
            buttonHeight: buttonsHeight,
            buttonWidth: buttonsWidth,
            roundedBorderSize: roundedBorderSize,
          );
        },
      ),
    );
  }
}
