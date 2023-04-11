import 'package:app/desafio_3/services/shared_preferences_todo_service.dart';
import 'package:app/desafio_4/external/datasources/task_datasource_impl.dart';
import 'package:app/desafio_4/external/services/firestore_service.dart';
import 'package:app/desafio_4/infra/repositories/task_repository_impl.dart';
import 'package:app/desafio_4/presenter/home_page/home_module.dart';
import 'package:app/desafio_4/presenter/stores/tasks_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'desafio_4/stores/theme_store.dart';

// Módulo principal do projeto
class AppModule extends Module {
  // Páginas qualificadas para navegação.
  // ChildRoute: serve para construir um widget.
  // ModuleRoute: concatena outro módulo.
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => ThemeStore()),
        Bind.lazySingleton((i) => FirestoreService()),
        Bind.lazySingleton((i) => TaskDatasourceImpl(i())),
        Bind.lazySingleton((i) => TaskRepositoryImpl(i())),
        Bind.lazySingleton((i) => TasksStore(i())),
        // Bind.lazySingleton((i) => SharedPreferencesTodoService()),
        // Bind.lazySingleton((i) => TodosStore(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
      ];
}
