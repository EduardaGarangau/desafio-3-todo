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
      height: isWebPlatform ? size.height * 0.11 : size.height * 0.105,
      width: isWebPlatform ? size.width * 0.2 : size.width,
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
            radiusSize: isWebPlatform ? 23 : 27,
            badgeNumber: badgeNumber,
            hasBadge: true,
            isWebPlatform: isWebPlatform,
          ),
          SizedBox(
            width: isWebPlatform ? size.width * 0.005 : size.width * 0.01,
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
              Container(
                constraints: BoxConstraints(
                  maxWidth:
                      isWebPlatform ? size.width * 0.11 : size.width * 0.2,
                ),
                child: Text(
                  messageContent,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: themeTextStyle.messageContentTextStyle,
                ),
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
