// ignore_for_file: avoid_bool_literals_in_conditional_expressions, omit_local_variable_types

import 'dart:math';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../stores/theme_store.dart';

class ThemeSwitchWidget extends StatefulWidget {
  const ThemeSwitchWidget({super.key});

  @override
  State<ThemeSwitchWidget> createState() => _ThemeSwitchWidgetState();
}

class _ThemeSwitchWidgetState extends State<ThemeSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeStore = context.watch<ThemeStore>();
    final _switchTheme = themeStore.value == ThemeMode.light ? true : false;

    return Switch(
      value: _switchTheme,
      hoverColor: themeColors.profileBGColor,
      activeColor: themeColors.profileBGColor,
      onChanged: (value) {
        themeStore.changeTheme();
      },
    );
  }
}
