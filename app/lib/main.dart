// ignore_for_file: lines_longer_than_80_chars

import 'package:app/app_module.dart';
import 'package:design_system/design_system.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'desafio_4/stores/theme_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyC4NB5gmDCVllTiwMN7k24tvXzRa3pLezs',
      appId: '1:1055938620504:web:72ba1d3cd8f5e4140aee2d',
      messagingSenderId: '1055938620504',
      projectId: 'todo-823d2',
    ),
  );
  // No Flutter Modular precisamos que o ModularApp seja o primeiro widget do projeto, ele que faz a configuração inicial.
  // Ele nos obriga a adicionar um módulo principal e um widget principal.
  runApp(ModularApp(module: AppModule(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeStore = context.watch<ThemeStore>((store) => store.value);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Chat and To-do App',
      themeMode: themeStore.value,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
