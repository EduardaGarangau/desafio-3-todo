import 'package:flutter/material.dart';

import '../design_system.dart';

class AppBarWidget extends StatelessWidget {
  final String? userImageUrl;
  final String name;

  const AppBarWidget({
    required this.name,
    required this.userImageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeFontStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final size = MediaQuery.of(context).size;

    return Row(
      children: [
        UserImageWidget(
          userImageUrl: userImageUrl,
          radiusSize: 14,
          badgeNumber: '',
          hasBadge: false,
        ),
        const SizedBox(width: 10),
        Text(
          name,
          style: themeFontStyle.userNameChatPageTextStyle,
        ),
        const SizedBox(width: 45),
        Container(
          height: size.height * 0.05,
          width: size.width * 0.08,
          decoration: BoxDecoration(
            color: themeColors.appBarButtonColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              'Agree to Offer',
              style: themeFontStyle.appBarButtonTextTextStyle,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Icon(
          Icons.inbox_outlined,
          color: themeColors.whiteIconsColor,
          size: 22,
        ),
        const SizedBox(width: 12),
        Icon(
          Icons.calendar_month_outlined,
          color: themeColors.whiteIconsColor,
          size: 22,
        ),
      ],
    );
  }
}
