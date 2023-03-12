import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class UserImageWidget extends StatelessWidget {
  final String? userImageUrl;
  final double radiusSize;
  final String? badgeNumber;
  final bool hasBadge;

  const UserImageWidget({
    required this.userImageUrl,
    required this.radiusSize,
    required this.badgeNumber,
    required this.hasBadge,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radiusSize,
          backgroundImage: Image.asset(
            userImageUrl ?? 'lib/assets/images/person.jpg',
            package: 'design_system',
          ).image,
        ),
        if (hasBadge)
          Positioned(
            top: 32,
            left: 33,
            child: BadgeWidget(
              number: badgeNumber!,
              selected: true,
            ),
          ),
      ],
    );
  }
}
