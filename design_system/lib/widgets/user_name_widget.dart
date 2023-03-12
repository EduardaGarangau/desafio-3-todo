import 'package:flutter/material.dart';

import '../design_system.dart';

class UserNameWidget extends StatelessWidget {
  final String name;
  final bool hasOnlineFlag;
  final double? nameFontSize;

  const UserNameWidget({
    required this.name,
    required this.hasOnlineFlag,
    this.nameFontSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return Row(
      children: [
        Text(
          name,
          style: nameFontSize == null
              ? themeTextStyle.userNameTextStyle
              : themeTextStyle.userNameTextStyle
                  .copyWith(fontSize: nameFontSize),
        ),
        if (hasOnlineFlag) ...{
          const SizedBox(width: 5),
          const Center(
            child: OnlineFlagWidget(),
          ),
        }
      ],
    );
  }
}
