import 'package:design_system/design_system.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeSwitchWidget extends StatefulWidget {
  const ThemeSwitchWidget({super.key});

  @override
  State<ThemeSwitchWidget> createState() => _ThemeSwitchWidgetState();
}

class _ThemeSwitchWidgetState extends State<ThemeSwitchWidget> {
  bool _switchTheme = false;

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Switch(
      value: _switchTheme,
      hoverColor: themeColors.profileBGColor,
      activeColor: themeColors.profileBGColor,
      onChanged: (value) {
        setState(() {
          _switchTheme = value;
        });
      },
    );
  }
}
