import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/app_bar_buttons_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/chat_and_profile_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/filter_buttons_web_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/theme_switch_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class WebHomePage extends StatefulWidget {
  const WebHomePage({super.key});

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: const AppBarWebWidget(
        buttonsWidget: AppBarButtonsWidget(),
        switchTheme: ThemeSwitchWidget(),
      ),
      body: Row(
        children: const [
          FilterButtonsWebWidget(),
          ChatAndProfileWidget(),
        ],
      ),
    );
  }
}
