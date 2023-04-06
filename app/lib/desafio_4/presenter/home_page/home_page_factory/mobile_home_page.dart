import 'package:app/desafio_4/presenter/home_page/home_page_widgets/mobile_home_page/filters_mobile_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../profile_page/profile_page.dart';
import '../home_page_widgets/filters_section_widget.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 20,
              left: 20,
              right: 20,
            ),
            child: SearchMessageWidget(
              width: size.width * 0.9,
              height: size.height * 0.07,
            ),
          ),
          FiltersMobileWidget(
            height: size.height * 0.05,
          ),
          SizedBox(height: size.height * 0.015),
          FiltersSectionWidget.mobile(
            height: size.height * 0.03,
            width: size.width,
            messagesHeight: 105,
            imageSpacing: size.width * 0.03,
            messageCardHeight: 88,
            positionedImage: 24,
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            ),
            child: BottomNavigatorWidget(
              height: size.height * 0.11,
            ),
          ),
        ],
      ),
    );
  }
}
