import 'package:app/desafio_4/presenter/chat_page/chat_page_widgets/messages_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String userName;
  final String userImageUrl;

  const ChatWidget({
    required this.userName,
    required this.userImageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Container(
        width: size.width * 0.45,
        height: size.height,
        decoration: BoxDecoration(
          color: themeColors.chatBackgroundWeb,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            ChatAppBarWidget.web(
              userImageUrl: userImageUrl,
              userName: userName,
              height: size.height * 0.1,
              titleHeight: size.height * 0.04,
              buttonWidth: size.width * 0.1,
            ),
            MessagesWidget(
              userImageUrl: userImageUrl,
              name: userName,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: MessageInputWidget(
                width: size.width * 0.43,
                buttonHeight: size.height * 0.1,
                buttonWidth: size.width * 0.05,
                isWebPlatform: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
