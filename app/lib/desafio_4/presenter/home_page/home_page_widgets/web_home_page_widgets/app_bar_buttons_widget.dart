import 'package:app/desafio_4/mocks/app_bar_buttons_web_mock.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppBarButtonsWidget extends StatelessWidget {
  const AppBarButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final buttons = AppBarButtonsWebMock.buttons;

    return SizedBox(
      height: size.height * 0.25,
      width: size.width * 0.35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: buttons.length,
        itemBuilder: (context, index) {
          final button = buttons[index];

          return IconButtonWidget(
            icon: button.icon,
            title: button.title,
            selected: button.selected,
            isWebPlatform: true,
          );
        },
      ),
    );
  }
}
