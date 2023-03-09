import 'package:flutter/material.dart';

class ThemeColorsExtension extends ThemeExtension<ThemeColorsExtension> {
  final Color containerAndBottomNavColor; //almostBlack
  final Color greyTextAndIconColor; //grey
  final Color buttonColor; //transparent
  final Color buttonSelectedColor; //amber
  final Color blackTextAndIconColor; // black
  final Color badgeAndProfileBGColor; //purple
  final Color badgeNotSelectedColor; //grey
  final Color nameAndIconsWhiteColor; //white
  final Color profileButtonColor; //mediumPurple
  final Color profileButtonUnvailableColor; //almostPurple
  final List<Color> habilitiesColors;
  final Color blackContainer; //black
  final Color greyColor; //mediumGrey
  final Color sendedMessageContainerColor; //darkpink
  final Color onlineColor; //green

  ThemeColorsExtension({
    required this.containerAndBottomNavColor,
    required this.greyTextAndIconColor,
    required this.buttonColor,
    required this.buttonSelectedColor,
    required this.blackTextAndIconColor,
    required this.badgeAndProfileBGColor,
    required this.badgeNotSelectedColor,
    required this.nameAndIconsWhiteColor,
    required this.profileButtonColor,
    required this.profileButtonUnvailableColor,
    required this.habilitiesColors,
    required this.blackContainer,
    required this.sendedMessageContainerColor,
    required this.greyColor,
    required this.onlineColor,
  });

  @override
  ThemeExtension<ThemeColorsExtension> copyWith({Color? newColor}) {
    return ThemeColorsExtension(
      containerAndBottomNavColor: newColor ?? containerAndBottomNavColor,
      greyTextAndIconColor: newColor ?? greyTextAndIconColor,
      buttonColor: newColor ?? buttonColor,
      buttonSelectedColor: newColor ?? buttonSelectedColor,
      blackTextAndIconColor: newColor ?? blackTextAndIconColor,
      badgeAndProfileBGColor: newColor ?? badgeAndProfileBGColor,
      badgeNotSelectedColor: newColor ?? badgeNotSelectedColor,
      nameAndIconsWhiteColor: newColor ?? nameAndIconsWhiteColor,
      profileButtonColor: newColor ?? profileButtonColor,
      profileButtonUnvailableColor: newColor ?? profileButtonUnvailableColor,
      habilitiesColors: habilitiesColors,
      blackContainer: newColor ?? blackContainer,
      sendedMessageContainerColor: newColor ?? sendedMessageContainerColor,
      greyColor: newColor ?? greyColor,
      onlineColor: newColor ?? onlineColor,
    );
  }

  @override
  ThemeExtension<ThemeColorsExtension> lerp(
      covariant ThemeExtension<ThemeColorsExtension>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }
}
