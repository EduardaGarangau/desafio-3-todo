import 'package:app/widgets/home_page/filters_section_widget.dart';
import 'package:app/widgets/home_page/filters_widget.dart';
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
        children: const [
          Padding(
            padding: EdgeInsets.only(
              top: 30,
              bottom: 20,
              left: 20,
              right: 20,
            ),
            child: SearchMessageWidget(),
          ),
          FiltersWidget(),
          SizedBox(height: 10),
          FiltersSectionWidget(),
          BottomNavigatorWidget(),
        ],
      ),
    );
  }
}
