import 'package:flutter/material.dart';

import '../design_system.dart';

class MessageBubbleWidget extends StatelessWidget {
  final bool isMessageReceived;
  final String messageContent;

  const MessageBubbleWidget({
    required this.messageContent,
    required this.isMessageReceived,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColor = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeFontStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: size.width * 0.2,
      ),
      child: IntrinsicHeight(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: isMessageReceived
                ? themeColor.messageBubbleReceivedColor
                : themeColor.messageBubbleSendedColor,
            borderRadius: isMessageReceived
                ? const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
                : const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
          ),
          child: Center(
            child: Text(
              messageContent,
              style: themeFontStyle.messageContentTextStyle.copyWith(
                fontSize: 16,
                color: themeColor.whiteTextColor,
              ),
              textAlign: TextAlign.start,
              maxLines: 10,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
