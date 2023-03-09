import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MessageCardWidget extends StatelessWidget {
  final String? userImageUrl;
  final String name;
  final String badgeNumber;
  final String number;
  final String messageContent;
  final String messageHour;

  const MessageCardWidget({
    required this.userImageUrl,
    required this.name,
    required this.badgeNumber,
    required this.number,
    required this.messageContent,
    required this.messageHour,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return Container(
      height: size.height * 0.1,
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
            radiusSize: 22,
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
                hasOnlineFlag: true,
              ),
              const SizedBox(height: 5),
              Text(
                number,
                style: themeTextStyle.numbersTextStyle,
              ),
              const SizedBox(height: 8),
              Text(
                messageContent,
                style: themeTextStyle.profileDetailsTextStyle,
              ),
            ],
          ),
          const SizedBox(width: 25),
          Text(
            messageHour,
            style: themeTextStyle.numbersTextStyle,
          ),
        ],
      ),
    );
  }
}
