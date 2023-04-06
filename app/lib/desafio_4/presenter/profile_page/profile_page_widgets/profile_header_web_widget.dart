import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_header_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileHeaderWebWidget extends StatelessWidget
    implements ProfileHeaderWidget {
  final String imageUrl;
  final String name;
  final String phone;
  final bool isOnline;
  final double height;

  const ProfileHeaderWebWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.phone,
    required this.isOnline,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return SizedBox(
      height: height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserImageWidget(
            userImageUrl: imageUrl,
            radiusSize: 20,
            hasBadge: false,
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
    );
  }
}
