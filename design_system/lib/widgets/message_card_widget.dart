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
  final double height;
  final double width;
  final double positionedImage;
  final double maxWidthConstraints;
  final double imageSpacing;

  const MessageCardWidget({
    required this.userImageUrl,
    required this.name,
    required this.badgeNumber,
    required this.number,
    required this.messageContent,
    required this.messageHour,
    required this.hasOnlineFlag,
    required this.isMuted,
    this.height = 100,
    this.width = 100,
    this.positionedImage = 26,
    this.maxWidthConstraints = 400,
    this.imageSpacing = 15,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return Container(
      height: height,
      width: width,
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
            radiusSize: height * 0.27,
            badgeNumber: badgeNumber,
            hasBadge: true,
            positionedSize: positionedImage,
          ),
          SizedBox(width: imageSpacing),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserNameWidget(
                name: name,
                hasOnlineFlag: hasOnlineFlag,
              ),
              SizedBox(height: size.height * 0.007),
              Text(
                number,
                style: themeTextStyle.phoneNumberTextStyle,
              ),
              SizedBox(height: size.height * 0.011),
              Container(
                constraints: BoxConstraints(
                  maxWidth: maxWidthConstraints,
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
