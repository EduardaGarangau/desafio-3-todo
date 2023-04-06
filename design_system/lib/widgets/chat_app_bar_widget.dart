import 'package:design_system/widgets/chat_app_bar_mobile_widget.dart';
import 'package:design_system/widgets/chat_app_bar_web_widget.dart';
import 'package:flutter/material.dart';

class ChatAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  factory ChatAppBarWidget.mobile({
    required String? userImageUrl,
    required String userName,
    double toolBarHeight = 66,
    double contentHeight = 30,
    double buttonHeight = 33,
    double buttonWidth = 86,
    double leadingWidth = 30,
    double spacingBetweenWidgets = 10,
  }) {
    return ChatAppBarMobileWidget(
      userImageUrl: userImageUrl,
      userName: userName,
      toolBarHeight: toolBarHeight,
      contentHeight: contentHeight,
      buttonHeight: buttonHeight,
      buttonWidth: buttonWidth,
      leadingWidth: leadingWidth,
      spacingBetweenWidgets: spacingBetweenWidgets,
    );
  }

  factory ChatAppBarWidget.web({
    required String userImageUrl,
    required String userName,
    double height = 50,
    double titleHeight = 10,
    double buttonWidth = 100,
  }) {
    return ChatAppBarWebWidget(
      userName: userName,
      userImageUrl: userImageUrl,
      height: height,
      titleHeight: titleHeight,
      buttonWidth: buttonWidth,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
