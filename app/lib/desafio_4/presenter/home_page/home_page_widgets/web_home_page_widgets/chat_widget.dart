import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../chat_page/chat_page_widgets/messages_widget.dart';

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
    return Column(
      children: [
        AppBarWidget(
          userImageUrl: userImageUrl,
          name: userName,
          isWebPlatform: true,
        ),
        MessagesWidget(
          userImageUrl: userImageUrl,
          name: userName,
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 10,
            bottom: 20,
          ),
          child: MessageInputWidget(isWebPlatform: true),
        ),
      ],
    );
  }
}
