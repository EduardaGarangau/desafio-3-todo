import 'package:app/models/messages_card_model.dart';
import 'package:app/pages/chat_page.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MessagesListWidget extends StatelessWidget {
  final List<MessageCardModel> messages;

  const MessagesListWidget({
    required this.messages,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatPage(
                  userName: message.name,
                  userImageUrl: message.userImageUrl,
                ),
              ),
            );
          },
          child: MessageCardWidget(
            userImageUrl: message.userImageUrl,
            name: message.name,
            badgeNumber: message.badgeNumber,
            number: message.number,
            messageContent: message.messageContent,
            messageHour: message.messageHour,
            hasOnlineFlag: message.hasOnlineFlag,
            isMuted: message.isMuted,
          ),
        );
      },
    );
  }
}
