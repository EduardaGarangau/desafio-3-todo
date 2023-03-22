import 'package:app/pages/home_page.dart';
import 'package:app/services/shared_preferences_todo_service.dart';
import 'package:app/stores/todos_store.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => SharedPreferencesTodoService()),
        ChangeNotifierProvider(
          create: (context) =>
              TodosStore(context.read<SharedPreferencesTodoService>()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chat and To-do App',
        theme: CustomTheme.theme,
        home: const HomePage(),
      ),
    );
  }
}
