import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppBarWebWidget extends StatelessWidget with PreferredSizeWidget {
  final Widget buttonsWidget;
  final Widget switchTheme;
  final double height;
  final double logoSpace;
  final double buttonsSpace;
  final double headerNameSpace;

  const AppBarWebWidget({
    super.key,
    required this.buttonsWidget,
    required this.switchTheme,
    this.height = 100,
    this.logoSpace = 20,
    this.buttonsSpace = 50,
    this.headerNameSpace = 120,
  });

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return AppBar(
      toolbarHeight: height,
      backgroundColor: AppColors.darkGrey,
      title: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1340) {
            return Row(
              children: [
                SizedBox(width: logoSpace),
                Text(
                  'NeWorkers',
                  style: themeTextStyle.searchCardTextStyle.copyWith(
                    color: themeColors.whiteTextColor,
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: buttonsSpace),
                buttonsWidget,
                SizedBox(width: headerNameSpace),
                switchTheme,
                const WebNameHeaderWidget(
                  userName: 'Russel Hue',
                  userPhoneNumber: '+(1) 345-123-5467',
                  userImageUrl: 'lib/assets/images/russel_hue.jpg',
                ),
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.menu,
                      color: themeColors.whiteTextColor,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'NeWorkers',
                      style: themeTextStyle.searchCardTextStyle.copyWith(
                        color: themeColors.whiteTextColor,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const WebNameHeaderWidget(
                  userName: 'Russel Hue',
                  userPhoneNumber: '+(1) 345-123-5467',
                  userImageUrl: 'lib/assets/images/russel_hue.jpg',
                ),
              ],
            );
          }
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);
}
