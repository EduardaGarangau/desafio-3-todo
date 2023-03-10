import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class SearchMessageWidget extends StatelessWidget {
  const SearchMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return InputAndTodoContainer(
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: themeColors.greyIconsColor,
            size: 25,
          ),
          const SizedBox(width: 10),
          Text(
            'Search',
            style: themeTextStyle.searchCardTextStyle,
          ),
        ],
      ),
    );
  }
}
