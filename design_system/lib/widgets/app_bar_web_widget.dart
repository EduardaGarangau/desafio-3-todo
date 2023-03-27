import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppBarWebWidget extends StatelessWidget with PreferredSizeWidget {
  final Widget buttonsWidget;
  final Widget switchTheme;

  const AppBarWebWidget({
    super.key,
    required this.buttonsWidget,
    required this.switchTheme,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return AppBar(
      toolbarHeight: size.height * 0.25,
      backgroundColor: AppColors.darkGrey,
      title: Row(
        children: [
          SizedBox(width: size.width * 0.013),
          Text(
            'NeWorkers',
            style: themeTextStyle.searchCardTextStyle.copyWith(
              color: themeColors.whiteTextColor,
              fontSize: 20,
            ),
          ),
          SizedBox(width: size.width * 0.034),
          buttonsWidget,
          SizedBox(width: size.width * 0.083),
          switchTheme,
          const WebNameHeaderWidget(
            userName: 'Russel Hue',
            userPhoneNumber: '+(1) 345-123-5467',
            userImageUrl: 'lib/assets/images/russel_hue.jpg',
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);
}
