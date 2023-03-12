import 'package:flutter/material.dart';

import '../design_system.dart';

class MessageBubbleDetailsWidget extends StatelessWidget {
  final String? userImageUrl;
  final String? name;
  final String hour;
  final bool isMessageReceived;

  const MessageBubbleDetailsWidget({
    required this.userImageUrl,
    required this.name,
    required this.hour,
    required this.isMessageReceived,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeFontStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return Row(
      mainAxisAlignment:
          isMessageReceived ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (isMessageReceived) ...{
          UserImageWidget(
            userImageUrl: userImageUrl,
            radiusSize: 14,
            badgeNumber: '',
            hasBadge: false,
          ),
          const SizedBox(width: 10),
          Text(
            name!,
            style: themeFontStyle.userNameChatPageTextStyle.copyWith(
              color: AppColors.grey,
            ),
          ),
          const SizedBox(width: 20),
        },
        Text(
          hour,
          style: themeFontStyle.hourTextStyle.copyWith(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
