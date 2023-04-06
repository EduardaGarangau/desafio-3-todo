import 'package:flutter/material.dart';

import '../design_system.dart';

class AbilityCardWidget extends StatelessWidget {
  final String ability;
  final Color cardColor;
  final double height;
  final double? fontSize;

  const AbilityCardWidget({
    required this.ability,
    required this.cardColor,
    this.height = 50,
    this.fontSize = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    return UnconstrainedBox(
      child: Container(
        height: height,
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
            style: themeTextStyle.abilityTextStyle.copyWith(
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
