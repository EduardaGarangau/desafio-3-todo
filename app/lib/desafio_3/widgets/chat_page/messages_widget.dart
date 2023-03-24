import 'package:app/desafio_3/mocks/messages_mock.dart';
import 'package:app/desafio_3/widgets/chat_page/message_widget.dart';
import 'package:flutter/material.dart';

class MessagesWidget extends StatelessWidget {
  final String userImageUrl;
  final String name;

  const MessagesWidget({
    required this.userImageUrl,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final messages = MessagesMock.messages;

    return Expanded(
      child: ListView.builder(
        reverse: true,
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return MessageWidget(
            userImageUrl: userImageUrl,
            name: name,
            hour: messages[index].hour,
            isMessageReceived: messages[index].isMessageReceived,
            messageContent: messages[index].messageContent,
          );
        },
      ),
    );
  }
}
