import 'package:app/desafio_4/domain/entities/message_entity.dart';
import 'package:app/desafio_4/mocks/messages_mock.dart';
import 'package:app/desafio_4/presenter/chat_page/chat_page_widgets/message_widget.dart';
import 'package:flutter/material.dart';

class MessagesWidget extends StatelessWidget {
  final String userId;
  final String userImageUrl;
  final String name;
  final List<MessageEntity> messages;

  const MessagesWidget({
    required this.userId,
    required this.userImageUrl,
    required this.name,
    required this.messages,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        //reverse: true,
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final isMessageReceived = messages[index].isMessageReceived(userId);

          return MessageWidget(
            userImageUrl: userImageUrl,
            name: name,
            hour: messages[index].getTime,
            isMessageReceived: isMessageReceived,
            messageContent: messages[index].text,
          );
        },
      ),
    );
  }
}
