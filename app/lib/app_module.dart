import 'package:app/desafio_4/domain/usecases/add_task_usecase.dart';
import 'package:app/desafio_4/domain/usecases/done_task_usecase.dart';
import 'package:app/desafio_4/domain/usecases/get_tasks_usecase.dart';
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
        Bind.lazySingleton((i) => AddTaskUsecase(i())),
        Bind.lazySingleton((i) => GetTasksUsecase(i())),
        Bind.lazySingleton((i) => DoneTaskUsecase(i())),
        Bind.lazySingleton((i) => TasksStore(i(), i(), i())),
      ];

  // TODO: RouterOutlet - estudar
  // ROTAS AQUI
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
      ];
}
