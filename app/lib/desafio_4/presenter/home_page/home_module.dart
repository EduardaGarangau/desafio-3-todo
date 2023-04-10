import 'package:app/desafio_4/presenter/chat_page/chat_module.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page_factory/home_page_by_platform.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePageByPlatform()),
        ModuleRoute('/chat', module: ChatModule()),
        ModuleRoute('/profile', module: ProfileModule()),
      ];
}
