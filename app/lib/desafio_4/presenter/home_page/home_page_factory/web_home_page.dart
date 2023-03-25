import 'package:app/desafio_4/domain/models/messages_card_model.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../home_page_widgets/filters_section_widget.dart';
import '../home_page_widgets/filters_widget.dart';
import '../home_page_widgets/web_home_page_widgets/chat_widget.dart';

class WebHomePage extends StatefulWidget {
  const WebHomePage({super.key});

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  bool _messageSelected = false;
  late MessageCardModel _message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;

    void selectMessage(MessageCardModel message) {
      setState(() {
        _messageSelected = true;
        _message = message;
      });
    }

    return Scaffold(
      body: Row(
        children: [
          Material(
            color: AppColors.darkGrey,
            elevation: 5,
            child: SizedBox(
              width: size.width * 0.3,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                      left: 10,
                      right: 10,
                    ),
                    child: SearchMessageWidget(isWebPlatform: true),
                  ),
                  const FiltersWidget(),
                  const SizedBox(height: 10),
                  FiltersSectionWidget(
                    isWebPlatform: true,
                    selectedMessage: selectMessage,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.7,
            child: _messageSelected
                ? ChatWidget(
                    userName: _message.name,
                    userImageUrl: _message.userImageUrl,
                  )
                : Center(
                    child: Text(
                      'Nenhuma mensagem',
                      style: themeTextStyle.userNameTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
