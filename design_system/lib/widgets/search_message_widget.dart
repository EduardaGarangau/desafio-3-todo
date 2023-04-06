import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class SearchMessageWidget extends StatelessWidget {
  final double width;
  final double height;

  const SearchMessageWidget({
    this.width = 350.0,
    this.height = 60.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return InputAndTodoContainer(
      width: width,
      height: height,
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: themeColors.greyIconsColor,
            size: height * 0.5,
          ),
          SizedBox(width: width * 0.02),
          Text(
            'Search',
            style: themeTextStyle.searchCardTextStyle,
          ),
        ],
      ),
    );
  }
}
