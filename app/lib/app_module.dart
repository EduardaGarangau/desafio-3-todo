import 'package:app/desafio_4/presenter/home_page/home_module.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'desafio_3/services/shared_preferences_todo_service.dart';
import 'desafio_3/stores/todos_store.dart';
import 'desafio_4/stores/theme_store.dart';

// Módulo principal do projeto
class AppModule extends Module {
  // Páginas qualificadas para navegação.
  // ChildRoute: serve para construir um widget.
  // ModuleRoute: concatena outro módulo.
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => ThemeStore()),
        Bind.lazySingleton((i) => SharedPreferencesTodoService()),
        Bind.lazySingleton((i) => TodosStore(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
      ];
}
