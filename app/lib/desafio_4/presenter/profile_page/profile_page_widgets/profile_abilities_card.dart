// ignore_for_file: avoid_redundant_argument_values

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileAbilitiesCard extends StatelessWidget {
  final List<String> abilities;
  final double width;
  final double spacing;
  final double runSpacing;
  final double abilityCardHeight;
  final double abilityCardFontSize;

  const ProfileAbilitiesCard({
    required this.abilities,
    this.width = 300,
    this.spacing = 15,
    this.runSpacing = 10,
    this.abilityCardHeight = 35,
    this.abilityCardFontSize = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Container(
      width: width,
      constraints: BoxConstraints(
        maxHeight: size.height * 0.1,
      ),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            spacing: spacing,
            runSpacing: runSpacing,
            direction: Axis.horizontal,
            children: abilities.map((ability) {
              return AbilityCardWidget(
                ability: ability,
                cardColor:
                    themeColors.abilitiesColors[abilities.indexOf(ability)],
                fontSize: abilityCardFontSize,
                height: abilityCardHeight,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
