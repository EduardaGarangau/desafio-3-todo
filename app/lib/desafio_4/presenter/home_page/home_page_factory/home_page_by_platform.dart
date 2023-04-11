import 'package:app/desafio_4/presenter/home_page/home_page_factory/mobile_home_page.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_factory/web_home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePageByPlatform extends StatefulWidget {
  const HomePageByPlatform({super.key});

  @override
  State<HomePageByPlatform> createState() => _HomePageByPlatformState();
}

class _HomePageByPlatformState extends State<HomePageByPlatform> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
  }

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
