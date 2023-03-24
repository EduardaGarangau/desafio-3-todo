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
  final bool isWebPlatform;

  const MessageCardWidget({
    required this.userImageUrl,
    required this.name,
    required this.badgeNumber,
    required this.number,
    required this.messageContent,
    required this.messageHour,
    required this.hasOnlineFlag,
    required this.isMuted,
    required this.isWebPlatform,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return Container(
      height: size.height * 0.1,
      width: isWebPlatform ? size.width * 0.3 : size.width,
      padding: const EdgeInsets.only(
        top: 10,
        left: 20,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserImageWidget(
            userImageUrl: userImageUrl,
            radiusSize: 27,
            badgeNumber: badgeNumber,
            hasBadge: true,
          ),
          SizedBox(
            width: isWebPlatform ? size.width * 0.005 : size.width * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserNameWidget(
                name: name,
                hasOnlineFlag: hasOnlineFlag,
              ),
              SizedBox(height: size.height * 0.009),
              Text(
                number,
                style: themeTextStyle.phoneNumberTextStyle,
              ),
              SizedBox(height: size.height * 0.011),
              Text(
                messageContent,
                style: themeTextStyle.messageContentTextStyle,
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  messageHour,
                  style: themeTextStyle.hourTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
