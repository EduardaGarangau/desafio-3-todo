import 'package:flutter/material.dart';

import '../design_system.dart';

class BadgeWidget extends StatelessWidget {
  final bool selected;
  final double radius;
  final String number;

  const BadgeWidget({
    required this.number,
    required this.radius,
    required this.selected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return CircleAvatar(
      radius: radius,
      backgroundColor: selected
          ? themeColors.badgeAndProfileBGColor
          : themeColors.badgeNotSelectedColor,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Center(
          child: Text(
            number,
            style: themeTextStyle.badgeTextStyle,
          ),
        ),
      ),
    );
  }
}

// Container(
//       height: size.height * 0.02,
//       width: size.width * 0.02,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(100),
//         color: selected
//             ? themeColors.badgeAndProfileBGColor
//             : themeColors.badgeNotSelectedColor,
//       ),
//       child: Center(
//         child: Text(
//           number,
//           style: themeTextStyle.numbersTextStyle.copyWith(
//             color: AppColors.white,
//           ),
//         ),
//       ),
//     );