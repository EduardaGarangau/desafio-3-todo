// ignore_for_file: lines_longer_than_80_chars

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final IconData icon;
  final String? text;
  final String? badgeNumber;
  final bool? selected;

  const ButtonWidget({
    required this.icon,
    required this.text,
    required this.selected,
    required this.badgeNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return Container(
      height: size.height * 0.05,
      width: text != null ? size.width * 0.07 : size.width * 0.03,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: selected!
            ? themeColors.buttonSelectedColor
            : themeColors.buttonColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
            color: selected!
                ? themeColors.blackTextAndIconColor
                : themeColors.greyTextAndIconColor,
          ),
          if (text != null) ...{
            const SizedBox(width: 8),
            Text(
              text!,
              style: selected!
                  ? themeTextStyle.filterButtonTextStyle
                      .copyWith(color: AppColors.black)
                  : themeTextStyle.filterButtonTextStyle,
            ),
            const SizedBox(width: 5),
            BadgeWidget(
              radius: 9,
              number: badgeNumber!,
              selected: selected!,
            ),
          }
        ],
      ),
    );
  }
}
