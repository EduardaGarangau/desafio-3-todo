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
    final size = MediaQuery.of(context).size;
    final themeColor = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: size.height * 0.1,
        title: AppBarWidget(
          name: userName,
          userImageUrl: userImageUrl,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: themeColor.whiteIconsColor,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
