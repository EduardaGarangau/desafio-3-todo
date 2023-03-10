// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';

import '../design_system.dart';

class FilterSectionWidget extends StatelessWidget {
  final String title;

  const FilterSectionWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColor = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Container(
      width: size.width,
      height: size.height * 0.03,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: themeTextStyle.filterSectionTextStyle,
          ),
          Icon(
            Icons.expand_more,
            color: themeColor.greyIconsColor,
          ),
        ],
      ),
    );
  }
}
