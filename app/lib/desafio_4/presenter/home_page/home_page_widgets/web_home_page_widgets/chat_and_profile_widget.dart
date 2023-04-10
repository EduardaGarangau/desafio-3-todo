import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/chat_list_web_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/chat_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/messages_list_web_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/profile_web_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../../../../domain/models/messages_card_model.dart';

class ChatAndProfileWidget extends StatefulWidget {
  final double height;
  final double width;
  final double contentWidth;

  const ChatAndProfileWidget({
    this.height = 800,
    this.width = 900,
    this.contentWidth = 600,
    super.key,
  });

  @override
  State<ChatAndProfileWidget> createState() => _ChatAndProfileWidgetState();
}

class _ChatAndProfileWidgetState extends State<ChatAndProfileWidget> {
  bool _messageSelected = false;
  late MessageCardModel _message;

  void _selectMessage(MessageCardModel message) {
    setState(() {
      _messageSelected = true;
      _message = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Container(
      width: size.width * 0.85,
      height: widget.height,
      color: themeColors.messageChatWebColor,
      child: Row(
        children: [
          ChatListWebWidget(
            selectedMessage: _selectMessage,
            sectionHeight: size.height * 0.03,
            sectionWidth: 300,
            messageCardHeight: size.height * 0.11,
            messageCardWidth: 255,
            imageSpacing: size.width * 0.005,
            maxWidthConstraints: 150,
            messagesHeight: 105,
            positionedImage: 23,
          ),
          SizedBox(
            width: size.width * 0.65,
            child: _messageSelected
                ? Row(
                    children: [
                      ChatWidget(
                        userName: _message.name,
                        userImageUrl: _message.userImageUrl,
                      ),
                      const ProfileWebWidget(),
                    ],
                  )
                : Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Container(
                        width: size.width * 0.85,
                        height: widget.height,
                        decoration: BoxDecoration(
                          color: themeColors.appBarWebColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'No Message selected!',
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
