import 'package:app/desafio_4/domain/models/messages_card_model.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/mobile_home_page/messages_list_mobile_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/messages_list_web_widget.dart';
import 'package:flutter/material.dart';

class MessagesListWidget extends StatelessWidget {
  factory MessagesListWidget.mobile({
    required List<MessageCardModel> messages,
    double height = 400,
    double messageCardHeight = 100,
    double messageCardWidth = 100,
    double imageSpacing = 20,
    double maxWidthConstraints = 400,
    double positionedImage = 26,
  }) {
    return MessagesListMobileWidget(
      messages: messages,
      height: height,
      imageSpacing: imageSpacing,
      maxWidthConstraints: maxWidthConstraints,
      messageCardHeight: messageCardHeight,
      messageCardWidth: messageCardWidth,
      positionedImage: positionedImage,
    );
  }

  factory MessagesListWidget.web({
    required Function(MessageCardModel) selectedMessage,
    required List<MessageCardModel> messages,
    double height = 400,
    double messageCardHeight = 100,
    double messageCardWidth = 100,
    double imageSpacing = 20,
    double maxWidthConstraints = 400,
    double positionedImage = 26,
  }) {
    return MessagesListWebWidget(
      selectedMessage: selectedMessage,
      messages: messages,
      height: height,
      imageSpacing: imageSpacing,
      maxWidthConstraints: maxWidthConstraints,
      messageCardHeight: messageCardHeight,
      messageCardWidth: messageCardWidth,
      positionedImage: positionedImage,
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
