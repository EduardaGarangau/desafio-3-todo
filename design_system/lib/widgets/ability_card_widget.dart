import 'package:flutter/material.dart';

import '../design_system.dart';

class AbilityCardWidget extends StatelessWidget {
  final String ability;
  final Color cardColor;
  final bool isWebPlatform;

  const AbilityCardWidget({
    required this.ability,
    required this.cardColor,
    required this.isWebPlatform,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final size = MediaQuery.of(context).size;

    return UnconstrainedBox(
      child: Container(
        height: isWebPlatform ? size.height * 0.03 : size.height * 0.04,
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardColor,
        ),
        child: Center(
          child: Text(
            ability,
            style: isWebPlatform
                ? themeTextStyle.abilityTextStyle.copyWith(
                    fontSize: 12,
                  )
                : themeTextStyle.abilityTextStyle,
          ),
        ),
      ),
    );
  }
}
