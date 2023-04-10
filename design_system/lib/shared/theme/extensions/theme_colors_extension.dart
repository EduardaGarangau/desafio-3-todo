// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ThemeColorsExtension extends ThemeExtension<ThemeColorsExtension> {
  final Color appBarWebColor;
  final Color appBarButtonColor;
  final Color webBackgroundColor;
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
  final Color messageChatWebColor;
  final Color chatBackgroundWeb;
  final Color blackTextColor;
  final Color greyTextColor;
  final Color yellowTextColor;
  final Color whiteTextColor;
  final Color filtersWebBackgroundColor;
  final Color whiteIconsColor;
  final Color blackIconsColor;
  final Color greyIconsColor;
  final Color errorColor;
  final Color chatAppBarColor;
  final Color appBarButtonWeb;
  final List<Color> abilitiesColors;

  ThemeColorsExtension({
    required this.chatBackgroundWeb,
    required this.appBarButtonWeb,
    required this.appBarWebColor,
    required this.appBarButtonColor,
    required this.webBackgroundColor,
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
    required this.messageChatWebColor,
    required this.chatAppBarColor,
    required this.blackTextColor,
    required this.errorColor,
    required this.greyTextColor,
    required this.whiteTextColor,
    required this.filtersWebBackgroundColor,
    required this.whiteIconsColor,
    required this.blackIconsColor,
    required this.greyIconsColor,
    required this.abilitiesColors,
    required this.yellowTextColor,
  });

  @override
  ThemeExtension<ThemeColorsExtension> copyWith({Color? newColor}) {
    return ThemeColorsExtension(
      filtersWebBackgroundColor: newColor ?? filtersWebBackgroundColor,
      chatBackgroundWeb: newColor ?? chatBackgroundWeb,
      messageChatWebColor: newColor ?? messageChatWebColor,
      appBarButtonWeb: newColor ?? appBarButtonWeb,
      appBarWebColor: newColor ?? appBarWebColor,
      chatAppBarColor: newColor ?? chatAppBarColor,
      appBarButtonColor: newColor ?? appBarButtonColor,
      webBackgroundColor: newColor ?? webBackgroundColor,
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
      errorColor: newColor ?? errorColor,
      profileButtonAvailableColor: newColor ?? profileButtonAvailableColor,
      profileButtonUnvailableColor: newColor ?? profileButtonUnvailableColor,
      messageBubbleReceivedColor: newColor ?? messageBubbleReceivedColor,
      messageBubbleSendedColor: newColor ?? messageBubbleSendedColor,
      blackTextColor: newColor ?? blackTextColor,
      greyTextColor: newColor ?? greyTextColor,
      yellowTextColor: newColor ?? yellowTextColor,
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
    return t < 0.5 ? this : other!;
  }
}
