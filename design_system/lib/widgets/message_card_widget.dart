import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MessageCardWidget extends StatelessWidget {
  final String? userImageUrl;
  final String name;
  final String badgeNumber;
  final String number;
  final String messageContent;
  final String messageHour;
  final bool hasOnlineFlag;
  final bool isMuted;

  const MessageCardWidget({
    required this.userImageUrl,
    required this.name,
    required this.badgeNumber,
    required this.number,
    required this.messageContent,
    required this.messageHour,
    required this.hasOnlineFlag,
    required this.isMuted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColor = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Container(
      height: size.height * 0.11,
      width: size.width,
      padding: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserImageWidget(
            userImageUrl: userImageUrl,
            radiusSize: 27,
            badgeNumber: badgeNumber,
            hasBadge: true,
          ),
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserNameWidget(
                name: name,
                hasOnlineFlag: hasOnlineFlag,
              ),
              const SizedBox(height: 5),
              Text(
                number,
                style: themeTextStyle.phoneNumberTextStyle,
              ),
              const SizedBox(height: 12),
              Text(
                messageContent,
                style: themeTextStyle.messageContentTextStyle,
              ),
            ],
          ),
          const SizedBox(width: 4),
          Text(
            messageHour,
            style: themeTextStyle.hourTextStyle,
          ),
        ],
      ),
    );
  }
}
