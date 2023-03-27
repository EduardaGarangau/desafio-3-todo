// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String phone;
  final bool isOnline;
  final bool isWebPlatform;

  const ProfileHeaderWidget({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.phone,
    required this.isOnline,
    required this.isWebPlatform,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return isWebPlatform
        ? SizedBox(
            height: size.height * 0.05,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserImageWidget(
                  userImageUrl: imageUrl,
                  radiusSize: 20,
                  hasBadge: false,
                  isWebPlatform: isWebPlatform,
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    UserNameWidget(
                      name: name,
                      hasOnlineFlag: true,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      phone,
                      style: themeTextStyle.phoneNumberTextStyle.copyWith(
                        fontSize: 12,
                        color: Colors.white60,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        : SizedBox(
            height: size.height * 0.17,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: themeColors.whiteIconsColor,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Column(
                  children: [
                    UserImageWidget(
                      userImageUrl: imageUrl,
                      radiusSize: 40,
                      badgeNumber: '',
                      hasBadge: false,
                      isWebPlatform: false,
                    ),
                    const SizedBox(height: 10),
                    UserNameWidget(
                      name: name,
                      hasOnlineFlag: isOnline,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      phone,
                      style: themeTextStyle.phoneNumberTextStyle.copyWith(
                        fontSize: 17,
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 3),
                    Icon(
                      size: 30,
                      Icons.menu,
                      color: themeColors.whiteIconsColor,
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
