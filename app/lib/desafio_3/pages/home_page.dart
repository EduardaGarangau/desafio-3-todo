import 'package:app/desafio_3/pages/profile_page.dart';
import 'package:app/desafio_3/widgets/home_page/filters_section_widget.dart';
import 'package:app/desafio_3/widgets/home_page/filters_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          const FiltersSectionWidget(),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            ),
            child: const BottomNavigatorWidget(),
          ),
        ],
      ),
    );
  }
}