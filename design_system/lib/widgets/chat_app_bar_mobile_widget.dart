import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ChatAppBarMobileWidget extends StatelessWidget
    implements ChatAppBarWidget {
  final String? userImageUrl;
  final String userName;
  final double toolBarHeight;
  final double contentHeight;
  final double buttonHeight;
  final double buttonWidth;
  final double leadingWidth;
  final double spacingBetweenWidgets;

  const ChatAppBarMobileWidget({
    required this.userImageUrl,
    required this.userName,
    this.toolBarHeight = 50,
    this.contentHeight = 10,
    this.buttonHeight = 33,
    this.buttonWidth = 86,
    this.leadingWidth = 30,
    this.spacingBetweenWidgets = 10,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeFontStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return AppBar(
      toolbarHeight: toolBarHeight,
      leadingWidth: leadingWidth,
      title: Container(
        height: contentHeight,
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
              radiusSize: contentHeight / 2.2,
              badgeNumber: '',
              hasBadge: false,
            ),
            SizedBox(width: spacingBetweenWidgets),
            Text(
              userName,
              style: themeFontStyle.userNameChatPageTextStyle,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: buttonHeight,
                    width: buttonWidth,
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
                  SizedBox(width: spacingBetweenWidgets),
                  Icon(
                    Icons.inbox_outlined,
                    color: themeColors.whiteIconsColor,
                    size: contentHeight / 1.5,
                  ),
                  SizedBox(width: spacingBetweenWidgets),
                  Icon(
                    Icons.calendar_month_outlined,
                    color: themeColors.whiteIconsColor,
                    size: contentHeight / 1.5,
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
          size: contentHeight / 1.5,
          color: themeColors.whiteIconsColor,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);
}
