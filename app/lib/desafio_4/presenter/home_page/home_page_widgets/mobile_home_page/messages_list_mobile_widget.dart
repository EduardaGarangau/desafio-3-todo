import 'package:app/desafio_4/domain/models/messages_card_model.dart';
import 'package:app/desafio_4/presenter/chat_page/chat_page.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/messages_list_widget.dart';
import 'package:app/desafio_4/presenter/stores/chat_store.dart';
import 'package:app/desafio_4/presenter/stores/user_store.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MessagesListMobileWidget extends StatelessWidget
    implements MessagesListWidget {
  final List<MessageCardModel> messages;
  final double height;
  final double messageCardHeight;
  final double messageCardWidth;
  final double imageSpacing;
  final double maxWidthConstraints;
  final double positionedImage;

  const MessagesListMobileWidget({
    required this.messages,
    this.height = 400,
    this.messageCardWidth = 100,
    this.messageCardHeight = 100,
    this.imageSpacing = 20,
    this.maxWidthConstraints = 400,
    this.positionedImage = 30,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final userStore = Modular.get<UserStore>();
    final chatStore = Modular.get<ChatStore>();

    return SizedBox(
      height: messages.length * height,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];

          return InkWell(
            onTap: () {
              Modular.to.pushNamed(
                '/chat/',
                arguments: [
                  userStore.receiverUser,
                  userStore.receiverUser.imageUrl
                ],
              );
            },
            child: MessageCardWidget(
              userImageUrl: userStore.receiverUser.imageUrl,
              name: userStore.receiverUser.name,
              badgeNumber: message.badgeNumber,
              number: message.number,
              messageContent: chatStore.state.last.text,
              messageHour: chatStore.state.last.getTime,
              hasOnlineFlag: message.hasOnlineFlag,
              isMuted: message.isMuted,
              height: messageCardHeight,
              width: messageCardWidth,
              imageSpacing: imageSpacing,
              maxWidthConstraints: maxWidthConstraints,
              positionedImage: positionedImage,
            ),
          );
        },
      ),
    );
  }
}
