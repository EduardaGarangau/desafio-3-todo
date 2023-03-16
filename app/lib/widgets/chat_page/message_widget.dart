import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String? userImageUrl;
  final String? name;
  final String hour;
  final bool isMessageReceived;
  final String messageContent;

  const MessageWidget({
    required this.userImageUrl,
    required this.name,
    required this.hour,
    required this.isMessageReceived,
    required this.messageContent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          MessageBubbleDetailsWidget(
            userImageUrl: userImageUrl,
            name: name,
            hour: hour,
            isMessageReceived: isMessageReceived,
          ),
          const SizedBox(height: 10),
          MessageBubbleWidget(
            messageContent: messageContent,
            isMessageReceived: isMessageReceived,
          ),
        ],
      ),
    );
  }
}
