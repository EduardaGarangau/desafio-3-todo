import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class SearchMessageWidget extends StatelessWidget {
  final bool isWebPlatform;

  const SearchMessageWidget({
    required this.isWebPlatform,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return InputAndTodoContainer(
      width: isWebPlatform ? size.width * 0.3 : size.width * 0.9,
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
