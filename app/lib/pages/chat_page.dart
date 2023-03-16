import 'package:app/widgets/chat_page/messages_widget.dart';
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
    return Scaffold(
      appBar: AppBarWidget(
        name: userName,
        userImageUrl: userImageUrl,
      ),
      body: Column(
        children: [
          MessagesWidget(
            userImageUrl: userImageUrl,
            name: userName,
          ),
          const Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child: MessageInputWidget(),
          ),
        ],
      ),
    );
  }
}
