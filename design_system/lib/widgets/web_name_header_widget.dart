import 'package:flutter/material.dart';

import '../design_system.dart';

class WebNameHeaderWidget extends StatelessWidget {
  final String userName;
  final String userPhoneNumber;
  final String? userImageUrl;

  const WebNameHeaderWidget({
    required this.userName,
    required this.userPhoneNumber,
    required this.userImageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyles = Theme.of(context).extension<TextStyleExtension>()!;

    String _getFirstName() {
      final index = userName.indexOf(' ');
      return userName.substring(0, index).trim();
    }

    String _getPeriodOfDay() {
      final time = TimeOfDay.now();

      if (time.period == DayPeriod.am && time.hour < 12) {
        return 'Good Morning, ';
      } else if (time.period == DayPeriod.pm && time.hour < 18) {
        return 'Good Evening, ';
      } else {
        return 'Good Night, ';
      }
    }

    return Container(
      height: size.height * 0.14,
      constraints: BoxConstraints(
        minWidth: size.width * 0.08,
      ),
      child: Center(
        child: Row(
          children: [
            const WebHeaderIconWidget(
              icon: Icons.local_phone_outlined,
              hasNotifications: false,
            ),
            const WebHeaderIconWidget(
              icon: Icons.notifications_none,
              hasNotifications: true,
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${_getPeriodOfDay()}${_getFirstName()}',
                  style: themeTextStyles.abilityTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  userPhoneNumber,
                  style: themeTextStyles.phoneNumberTextStyle.copyWith(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 15),
            UserImageWidget(
              userImageUrl: userImageUrl,
              radiusSize: 26,
              hasBadge: false,
              isWebPlatform: true,
            ),
          ],
        ),
      ),
    );
  }
}
