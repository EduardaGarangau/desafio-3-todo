import 'package:flutter/material.dart';

import '../design_system.dart';

class UserNameWidget extends StatelessWidget {
  final String name;
  final bool hasOnlineFlag;

  const UserNameWidget({
    required this.name,
    required this.hasOnlineFlag,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return Row(
      children: [
        Text(
          name,
          style: hasOnlineFlag
              ? themeTextStyle.nameTextStyle
              : themeTextStyle.nameTextStyle.copyWith(fontSize: 20),
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
