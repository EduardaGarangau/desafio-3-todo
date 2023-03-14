import 'package:app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat and To-do App',
      theme: CustomTheme.theme,
      home: const HomePage(),
    );
  }
}
