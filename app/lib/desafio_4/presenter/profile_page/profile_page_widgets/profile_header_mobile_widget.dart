import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_header_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileHeaderMobileWidget extends StatelessWidget
    implements ProfileHeaderWidget {
  final String imageUrl;
  final String name;
  final String phone;
  final bool isOnline;
  final double height;

  const ProfileHeaderMobileWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.phone,
    required this.isOnline,
    this.height = 113,
  });

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return SizedBox(
      height: height,
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
                radiusSize: height * 0.25,
                hasBadge: false,
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
                size: height * 0.2,
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
