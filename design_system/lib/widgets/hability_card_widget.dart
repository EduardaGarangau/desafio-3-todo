import 'package:flutter/material.dart';

import '../design_system.dart';

class HabilityCardWidget extends StatelessWidget {
  final String hability;
  final Color cardColor;

  const HabilityCardWidget({
    required this.hability,
    required this.cardColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final size = MediaQuery.of(context).size;

    return Container(
      width: hability.length * 10,
      height: size.height * 0.04,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cardColor,
      ),
      child: Center(
        child: Text(
          hability,
          style: themeTextStyle.abilityTextStyle,
        ),
      ),
    );
  }
}
