import 'package:flutter/material.dart';
import '../design_system.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String? userImageUrl;
  final String name;

  AppBarWidget({
    Key? key,
    required this.userImageUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeFontStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final size = MediaQuery.of(context).size;

    return AppBar(
      titleSpacing: 0,
      toolbarHeight: size.height * 0.1,
      title: Container(
        height: size.height * 0.04,
        padding: const EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
          color: themeColors.blackTextColor,
        ),
        child: Row(
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
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.23,
                    decoration: BoxDecoration(
                      color: themeColors.appBarButtonColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Agree to Offer',
                        style: themeFontStyle.appBarButtonTextTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.inbox_outlined,
                    color: themeColors.whiteIconsColor,
                    size: 22,
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.calendar_month_outlined,
                    color: themeColors.whiteIconsColor,
                    size: 22,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          size: 20,
          color: themeColors.whiteIconsColor,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);
}
