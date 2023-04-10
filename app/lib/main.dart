// ignore_for_file: lines_longer_than_80_chars

import 'package:app/app_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'desafio_4/stores/theme_store.dart';

void main() {
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

// ANTERIOR DO MODULAR:
// @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider(create: (context) => SharedPreferencesTodoService()),
//         ChangeNotifierProvider(
//           create: (context) =>
//               TodosStore(context.read<SharedPreferencesTodoService>()),
//         ),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Chat and To-do App',
//         theme: CustomTheme.theme,
//         home: const HomePageByPlatform(),
//       ),
//     );
//   }