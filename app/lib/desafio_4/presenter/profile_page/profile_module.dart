import 'package:app/desafio_4/presenter/profile_page/profile_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileModule extends Module {
  //TODO: colocar aqui a store e suas dependencias porque só ele que precisa

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ProfilePage()),
      ];
}
