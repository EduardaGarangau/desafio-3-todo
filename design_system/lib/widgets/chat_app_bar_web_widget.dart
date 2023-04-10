import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ChatAppBarWebWidget extends StatelessWidget implements ChatAppBarWidget {
  final String? userImageUrl;
  final String userName;
  final double height;
  final double titleHeight;
  final double buttonWidth;

  const ChatAppBarWebWidget({
    required this.userName,
    required this.userImageUrl,
    this.height = 50,
    this.titleHeight = 10,
    this.buttonWidth = 100,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeFontStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return AppBar(
      titleSpacing: 20,
      toolbarHeight: height,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      title: Container(
        height: titleHeight,
        padding: const EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
          color: themeColors.chatAppBarColor,
        ),
        child: Row(
          children: [
            UserImageWidget(
              userImageUrl: userImageUrl,
              radiusSize: titleHeight * 0.8, //TODO: verificar se esta certo
              badgeNumber: '',
              hasBadge: false,
            ),
            const SizedBox(width: 10),
            Row(
              children: [
                Text(
                  'Conversation with ',
                  style: themeFontStyle.abilityTextStyle.copyWith(
                    color: themeColors.greyTextColor,
                  ),
                ),
              ],
            ),
            Text(
              userName,
              style: themeFontStyle.userNameChatPageTextStyle,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: titleHeight * 0.9, //TODO: verificar se esta certo
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
                  const SizedBox(width: 10),
                  Icon(
                    Icons.inbox_outlined,
                    color: themeColors.whiteIconsColor,
                    size: titleHeight * 0.8, //TODO: verificar se esta certo
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.calendar_month_outlined,
                    color: themeColors.whiteIconsColor,
                    size: titleHeight * 0.8, //TODO: verificar se esta certo
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);
}
