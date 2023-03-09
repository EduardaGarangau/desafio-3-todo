// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextStyleExtension extends ThemeExtension<TextStyleExtension> {
  final TextStyle badgeTextStyle;
  final TextStyle filterButtonTextStyle;
  final TextStyle messageAndTypesTextStyle;
  final TextStyle nameTextStyle;
  final TextStyle numbersTextStyle;
  final TextStyle inputTextStyle;
  final TextStyle profileDetailsTextStyle;

  final TextStyle habilitiesAndTodoTitleStyle;

  TextStyleExtension({
    required this.badgeTextStyle,
    required this.filterButtonTextStyle,
    required this.messageAndTypesTextStyle,
    required this.nameTextStyle,
    required this.numbersTextStyle,
    required this.inputTextStyle,
    required this.profileDetailsTextStyle,
    required this.habilitiesAndTodoTitleStyle,
  });

  @override
  ThemeExtension<TextStyleExtension> copyWith({TextStyle? newTextStyle}) {
    return TextStyleExtension(
      badgeTextStyle: newTextStyle ?? badgeTextStyle,
      filterButtonTextStyle: newTextStyle ?? filterButtonTextStyle,
      messageAndTypesTextStyle: newTextStyle ?? messageAndTypesTextStyle,
      nameTextStyle: newTextStyle ?? nameTextStyle,
      numbersTextStyle: newTextStyle ?? numbersTextStyle,
      inputTextStyle: newTextStyle ?? inputTextStyle,
      profileDetailsTextStyle: newTextStyle ?? profileDetailsTextStyle,
      habilitiesAndTodoTitleStyle: newTextStyle ?? habilitiesAndTodoTitleStyle,
    );
  }

  @override
  ThemeExtension<TextStyleExtension> lerp(
      covariant ThemeExtension<TextStyleExtension>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }
}
