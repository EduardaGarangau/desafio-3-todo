import 'package:app/desafio_4/presenter/chat_page/chat_page_widgets/messages_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String userName;
  final String userImageUrl;

  const ChatPage({
    required this.userName,
    required this.userImageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: ChatAppBarWidget.mobile(
        userName: userName,
        userImageUrl: userImageUrl,
        toolBarHeight: size.height * 0.1,
        contentHeight: size.height * 0.05,
        buttonHeight: size.height * 0.05,
        buttonWidth: size.width * 0.23,
        spacingBetweenWidgets: size.width * 0.011,
      ),
      body: Column(
        children: [
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
              width: size.width * 0.9,
            ),
          ),
        ],
      ),
    );
  }
}
