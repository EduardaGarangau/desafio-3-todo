// ignore_for_file: avoid_redundant_argument_values

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileAbilitiesCard extends StatelessWidget {
  final List<String> abilities;
  final bool isWebPlatform;

  const ProfileAbilitiesCard({
    required this.abilities,
    required this.isWebPlatform,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Container(
      width: isWebPlatform ? size.width * 0.25 : size.width * 0.75,
      constraints: BoxConstraints(
        maxHeight: size.width * 0.2,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          spacing: isWebPlatform ? 6 : 15,
          runSpacing: isWebPlatform ? 5 : 10,
          direction: Axis.horizontal,
          children: abilities.map((ability) {
            return AbilityCardWidget(
              ability: ability,
              cardColor:
                  themeColors.abilitiesColors[abilities.indexOf(ability)],
              isWebPlatform: isWebPlatform,
            );
          }).toList(),
        ),
      ),
    );
  }
}
