import 'package:app/desafio_4/presenter/home_page/home_page_factory/mobile_home_page.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_factory/web_home_page.dart';
import 'package:flutter/material.dart';

class HomePageByPlatform extends StatelessWidget {
  const HomePageByPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (size.width > 500) {
      return const WebHomePage();
    } else {
      return const MobileHomePage();
    }
  }
}
