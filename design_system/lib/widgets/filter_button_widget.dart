import 'package:flutter/material.dart';

import '../design_system.dart';

class FilterButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? badgeNumber;
  final bool selected;
  final bool isWebPlatform;

  const FilterButtonWidget({
    required this.icon,
    required this.title,
    this.badgeNumber,
    required this.selected,
    required this.isWebPlatform,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final size = MediaQuery.of(context).size;

    return UnconstrainedBox(
      child: Container(
        height: isWebPlatform ? size.height * 0.07 : size.height * 0.05,
        width: isWebPlatform ? size.width * 0.11 : null,
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: selected
              ? themeColors.filterButtonSelectedColor
              : themeColors.filterButtonUnselectedColor,
        ),
        child: isWebPlatform
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        icon,
                        size: 25,
                        color: selected
                            ? themeColors.blackIconsColor
                            : themeColors.greyIconsColor,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        title,
                        style: selected
                            ? themeTextStyle.filterButtonSelectedTextStyle
                            : themeTextStyle.filterButtonUnselectedTextStyle,
                      ),
                    ],
                  ),
                  Text(
                    badgeNumber ?? '',
                    style: selected
                        ? themeTextStyle.filterButtonSelectedTextStyle
                        : themeTextStyle.filterButtonUnselectedTextStyle,
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 25,
                    color: selected
                        ? themeColors.blackIconsColor
                        : themeColors.greyIconsColor,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: selected
                        ? themeTextStyle.filterButtonSelectedTextStyle
                        : themeTextStyle.filterButtonUnselectedTextStyle,
                  ),
                  const SizedBox(width: 5),
                  BadgeWidget(
                    number: badgeNumber!,
                    selected: selected,
                  ),
                ],
              ),
      ),
    );
  }
}
