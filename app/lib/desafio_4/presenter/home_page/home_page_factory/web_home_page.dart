import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/filter_buttons_web_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../home_page_widgets/web_home_page_widgets/app_bar_buttons_widget.dart';
import '../home_page_widgets/web_home_page_widgets/chat_and_profile_widget.dart';
import '../home_page_widgets/web_home_page_widgets/theme_switch_widget.dart';

class WebHomePage extends StatefulWidget {
  const WebHomePage({super.key});

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorsTheme = Theme.of(context).extension<ThemeColorsExtension>()!;
    //print(size.width);

    return Scaffold(
      backgroundColor: colorsTheme.webBackgroundColor,
      appBar: AppBarWebWidget(
        height: size.height * 0.3,
        logoSpace: size.width * 0.013,
        buttonsSpace: size.width * 0.034,
        headerNameSpace: size.width * 0.24,
        buttonsWidget: const AppBarButtonsWidget(),
        switchTheme: const ThemeSwitchWidget(),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1300) {
            return Row(
              children: [
                FilterButtonsWebWidget(
                  height: size.height,
                  width: size.width * 0.15,
                  buttonHeight: size.height * 0.07,
                  buttonWidth: size.width * 0.11,
                ),
                ChatAndProfileWidget(
                  contentWidth: size.width * 0.4,
                ),
              ],
            );
          } else {
            return const ChatAndProfileWidget();
          }
        },
      ),
    );
  }
}
