// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ThemeColorsExtension extends ThemeExtension<ThemeColorsExtension> {
  final Color appBarButtonColor;
  final Color searchCardColor;
  final Color sendMessageCardColor;
  final Color bottomNavigatorColor;
  final Color onlineColor;
  final Color profileBGColor;
  final Color marginTaskColor;
  final Color sendMessageButtonColor;
  final Color taskUndoneBGColor;
  final Color taskDoneBGColor;
  final Color taskButtonUndoneColor;
  final Color taskButtonDoneColor;
  final Color filterButtonSelectedColor;
  final Color filterButtonUnselectedColor;
  final Color badgeSelectedColor;
  final Color badgeUnselectedColor;
  final Color bottomNavButtonSelectedColor;
  final Color bottomNavButtonUnselectedColor;
  final Color profileButtonAvailableColor;
  final Color profileButtonUnvailableColor;
  final Color messageBubbleReceivedColor;
  final Color messageBubbleSendedColor;
  final Color blackTextColor;
  final Color greyTextColor;
  final Color whiteTextColor;
  final Color whiteIconsColor;
  final Color blackIconsColor;
  final Color greyIconsColor;
  final List<Color> abilitiesColors;

  ThemeColorsExtension({
    required this.appBarButtonColor,
    required this.searchCardColor,
    required this.sendMessageCardColor,
    required this.bottomNavigatorColor,
    required this.onlineColor,
    required this.profileBGColor,
    required this.marginTaskColor,
    required this.sendMessageButtonColor,
    required this.taskUndoneBGColor,
    required this.taskDoneBGColor,
    required this.taskButtonUndoneColor,
    required this.taskButtonDoneColor,
    required this.filterButtonSelectedColor,
    required this.filterButtonUnselectedColor,
    required this.badgeSelectedColor,
    required this.badgeUnselectedColor,
    required this.bottomNavButtonSelectedColor,
    required this.bottomNavButtonUnselectedColor,
    required this.profileButtonAvailableColor,
    required this.profileButtonUnvailableColor,
    required this.messageBubbleReceivedColor,
    required this.messageBubbleSendedColor,
    required this.blackTextColor,
    required this.greyTextColor,
    required this.whiteTextColor,
    required this.whiteIconsColor,
    required this.blackIconsColor,
    required this.greyIconsColor,
    required this.abilitiesColors,
  });

  @override
  ThemeExtension<ThemeColorsExtension> copyWith({Color? newColor}) {
    return ThemeColorsExtension(
      appBarButtonColor: newColor ?? appBarButtonColor,
      searchCardColor: newColor ?? searchCardColor,
      sendMessageCardColor: newColor ?? sendMessageCardColor,
      bottomNavigatorColor: newColor ?? bottomNavigatorColor,
      onlineColor: newColor ?? onlineColor,
      profileBGColor: newColor ?? profileBGColor,
      marginTaskColor: newColor ?? marginTaskColor,
      sendMessageButtonColor: newColor ?? sendMessageButtonColor,
      taskUndoneBGColor: newColor ?? taskUndoneBGColor,
      taskDoneBGColor: newColor ?? taskDoneBGColor,
      taskButtonUndoneColor: newColor ?? taskButtonUndoneColor,
      taskButtonDoneColor: newColor ?? taskButtonDoneColor,
      filterButtonSelectedColor: newColor ?? filterButtonSelectedColor,
      filterButtonUnselectedColor: newColor ?? filterButtonUnselectedColor,
      badgeSelectedColor: newColor ?? badgeSelectedColor,
      badgeUnselectedColor: newColor ?? badgeUnselectedColor,
      bottomNavButtonSelectedColor: newColor ?? bottomNavButtonSelectedColor,
      bottomNavButtonUnselectedColor:
          newColor ?? bottomNavButtonUnselectedColor,
      profileButtonAvailableColor: newColor ?? profileButtonAvailableColor,
      profileButtonUnvailableColor: newColor ?? profileButtonUnvailableColor,
      messageBubbleReceivedColor: newColor ?? messageBubbleReceivedColor,
      messageBubbleSendedColor: newColor ?? messageBubbleSendedColor,
      blackTextColor: newColor ?? blackTextColor,
      greyTextColor: newColor ?? greyTextColor,
      whiteTextColor: newColor ?? whiteTextColor,
      whiteIconsColor: newColor ?? whiteIconsColor,
      blackIconsColor: newColor ?? blackIconsColor,
      greyIconsColor: newColor ?? greyIconsColor,
      abilitiesColors: abilitiesColors,
    );
  }

  @override
  ThemeExtension<ThemeColorsExtension> lerp(
    covariant ThemeExtension<ThemeColorsExtension>? other,
    double t,
  ) {
    throw UnimplementedError();
  }
}
