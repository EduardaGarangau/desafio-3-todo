import 'package:app/desafio_4/presenter/home_page/home_page_widgets/messages_list_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/chat_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/messages_list_web_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/profile_web_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../domain/models/messages_card_model.dart';

class ChatAndProfileWidget extends StatefulWidget {
  const ChatAndProfileWidget({super.key});

  @override
  State<ChatAndProfileWidget> createState() => _ChatAndProfileWidgetState();
}

class _ChatAndProfileWidgetState extends State<ChatAndProfileWidget> {
  bool _messageSelected = false;
  late MessageCardModel _message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    void _selectMessage(MessageCardModel message) {
      setState(() {
        _messageSelected = true;
        _message = message;
      });
    }

    return Container(
      width: size.width * 0.85,
      height: size.height * 0.9,
      color: AppColors.darkGrey,
      child: Row(
        children: [
          MessagesListWebWidget(selectedMessage: _selectMessage),
          SizedBox(
            width: size.width * 0.65,
            child: _messageSelected
                ? Row(
                    children: [
                      ChatWidget(
                        userName: _message.name,
                        userImageUrl: _message.userImageUrl,
                      ),
                      ProfileWebWidget(),
                    ],
                  )
                : Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Container(
                        width: size.width * 0.65,
                        height: size.height,
                        decoration: const BoxDecoration(
                          color: Color(0xFF1D1E24),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Nenhuma mensagem',
                            style: themeTextStyle.userNameTextStyle.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
