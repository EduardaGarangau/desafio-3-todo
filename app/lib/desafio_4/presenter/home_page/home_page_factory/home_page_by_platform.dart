import 'package:app/desafio_4/presenter/home_page/home_page_factory/mobile_home_page.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_factory/web_home_page.dart';
import 'package:flutter/material.dart';

class HomePageByPlatform extends StatelessWidget {
  const HomePageByPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        //TODO: colocar a lógica em um widget separado
        if (maxWidth < 2000.0 && maxWidth > 637) {
          return const WebHomePage();
        } else {
          return const MobileHomePage();
        }
      },
    );
  }
}
