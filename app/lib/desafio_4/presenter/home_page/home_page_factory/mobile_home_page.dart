import 'package:design_system/widgets/bottom_navigator_widget.dart';
import 'package:design_system/widgets/search_message_widget.dart';
import 'package:flutter/material.dart';

import '../home_page_widgets/filters_section_widget.dart';
import '../home_page_widgets/filters_widget.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
              bottom: 20,
              left: 20,
              right: 20,
            ),
            child: SearchMessageWidget(isWebPlatform: false),
          ),
          const FiltersWidget(),
          const SizedBox(height: 10),
          const FiltersSectionWidget(isWebPlatform: false),
          InkWell(
            onTap: () {},
            child: const BottomNavigatorWidget(),
          ),
        ],
      ),
    );
  }
}
