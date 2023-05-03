import 'package:app/desafio_4/domain/entities/message_entity.dart';
import 'package:app/desafio_4/presenter/chat_page/chat_page_widgets/message_text_field_widget.dart';
import 'package:app/desafio_4/presenter/chat_page/chat_page_widgets/messages_widget.dart';
import 'package:app/desafio_4/presenter/stores/chat_store.dart';
import 'package:app/desafio_4/presenter/stores/user_store.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

class ChatPage extends StatefulWidget {
  final String userName;
  final String userImageUrl;

  const ChatPage({
    required this.userName,
    required this.userImageUrl,
    super.key,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  void initState() {
    super.initState();
    context.read<ChatStore>().getMessages();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final store = Modular.get<UserStore>();
    final receiverUser = store.receiverUser;

    return Scaffold(
      appBar: ChatAppBarWidget.mobile(
        userName: widget.userName,
        userImageUrl: widget.userImageUrl,
        toolBarHeight: size.height * 0.1,
        contentHeight: size.height * 0.05,
        buttonHeight: size.height * 0.05,
        buttonWidth: size.width * 0.23,
        spacingBetweenWidgets: size.width * 0.011,
      ),
      body: Column(
        children: [
          ScopedBuilder<ChatStore, List<MessageEntity>>(
            store: Modular.get<ChatStore>(),
            onLoading: (context) => const Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            onError: (context, error) => Text(error),
            onState: (context, state) {
              return MessagesWidget(
                userImageUrl: receiverUser.imageUrl,
                name: receiverUser.name,
                userId: receiverUser.userId,
                messages: state,
              );
            },
          ),
          const MessageTextFieldWidget(),
        ],
      ),
    );
  }
}
