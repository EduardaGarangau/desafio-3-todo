import 'package:app/desafio_4/domain/models/app_bar_button_model.dart';
import 'package:flutter/material.dart';

class AppBarButtonsWebMock {
  static List<AppBarButtonModel> buttons = [
    AppBarButtonModel(
      icon: Icons.insert_drive_file_outlined,
      title: 'Resume',
      selected: false,
    ),
    AppBarButtonModel(
      icon: Icons.perm_contact_calendar_outlined,
      title: 'Contacts',
      selected: false,
    ),
    AppBarButtonModel(
      icon: Icons.insert_chart_outlined_outlined,
      title: 'Statistic',
      selected: false,
    ),
    AppBarButtonModel(
      icon: Icons.chat_outlined,
      title: 'Chat',
      selected: true,
    ),
    AppBarButtonModel(
      icon: Icons.apps_rounded,
      title: 'Settings',
      selected: false,
    ),
  ];
}
