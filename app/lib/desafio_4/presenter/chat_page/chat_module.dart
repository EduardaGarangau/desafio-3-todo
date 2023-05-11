import 'package:app/desafio_4/presenter/chat_page/chat_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChatModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) =>
              ChatPage(userName: args.data[0], userImageUrl: args.data[1]),
        ),
      ];
}
