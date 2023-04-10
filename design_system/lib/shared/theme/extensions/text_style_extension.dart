// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextStyleExtension extends ThemeExtension<TextStyleExtension> {
  final TextStyle searchCardTextStyle;
  final TextStyle badgeTextStyle;
  final TextStyle filterSectionTextStyle;
  final TextStyle userNameTextStyle;
  final TextStyle phoneNumberTextStyle;
  final TextStyle hourTextStyle;
  final TextStyle userBioTextStyle;
  final TextStyle abilityTextStyle;
  final TextStyle taskTitleStyle;
  final TextStyle taskDateStyle;
  final TextStyle userNameChatPageTextStyle;
  final TextStyle appBarButtonTextTextStyle;
  final TextStyle messageContentTextStyle;
  final TextStyle filterButtonSelectedTextStyle;
  final TextStyle filterButtonUnselectedTextStyle;
  final TextStyle userNameProfile;

  TextStyleExtension({
    required this.searchCardTextStyle,
    required this.badgeTextStyle,
    required this.filterSectionTextStyle,
    required this.userNameTextStyle,
    required this.phoneNumberTextStyle,
    required this.hourTextStyle,
    required this.userBioTextStyle,
    required this.abilityTextStyle,
    required this.taskTitleStyle,
    required this.taskDateStyle,
    required this.userNameChatPageTextStyle,
    required this.appBarButtonTextTextStyle,
    required this.messageContentTextStyle,
    required this.filterButtonSelectedTextStyle,
    required this.filterButtonUnselectedTextStyle,
    required this.userNameProfile,
  });

  @override
  ThemeExtension<TextStyleExtension> copyWith({TextStyle? newTextStyle}) {
    return TextStyleExtension(
      userNameProfile: newTextStyle ?? userNameProfile,
      searchCardTextStyle: newTextStyle ?? searchCardTextStyle,
      badgeTextStyle: newTextStyle ?? badgeTextStyle,
      filterSectionTextStyle: newTextStyle ?? filterSectionTextStyle,
      userNameTextStyle: newTextStyle ?? userNameTextStyle,
      phoneNumberTextStyle: newTextStyle ?? phoneNumberTextStyle,
      hourTextStyle: newTextStyle ?? hourTextStyle,
      userBioTextStyle: newTextStyle ?? userBioTextStyle,
      abilityTextStyle: newTextStyle ?? abilityTextStyle,
      taskTitleStyle: newTextStyle ?? taskTitleStyle,
      taskDateStyle: newTextStyle ?? taskDateStyle,
      userNameChatPageTextStyle: newTextStyle ?? userNameChatPageTextStyle,
      appBarButtonTextTextStyle: newTextStyle ?? appBarButtonTextTextStyle,
      messageContentTextStyle: newTextStyle ?? messageContentTextStyle,
      filterButtonSelectedTextStyle:
          newTextStyle ?? filterButtonSelectedTextStyle,
      filterButtonUnselectedTextStyle:
          newTextStyle ?? filterButtonUnselectedTextStyle,
    );
  }

  @override
  ThemeExtension<TextStyleExtension> lerp(
    covariant ThemeExtension<TextStyleExtension>? other,
    double t,
  ) {
    return t < 0.5 ? this : other!;
  }
}
