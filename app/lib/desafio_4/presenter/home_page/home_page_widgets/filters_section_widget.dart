import 'package:app/desafio_4/domain/models/messages_card_model.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/mobile_home_page/filters_section_mobile_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/filters_section_web_widget.dart';
import 'package:flutter/material.dart';

class FiltersSectionWidget extends StatelessWidget {
  factory FiltersSectionWidget.mobile({
    double height = 50,
    double width = double.infinity,
    double messagesHeight = 300,
    double messageCardHeight = 100,
    double messageCardWidth = 100,
    double imageSpacing = 20,
    double maxWidthConstraints = 400,
    double positionedImage = 26,
  }) {
    return FiltersSectionMobileWidget(
      height: height,
      width: width,
      imageSpacing: imageSpacing,
      maxWidthConstraints: maxWidthConstraints,
      messageCardHeight: messageCardHeight,
      messageCardWidth: messageCardWidth,
      messagesHeight: messagesHeight,
      positionedImage: positionedImage,
    );
  }

  factory FiltersSectionWidget.web({
    required Function(MessageCardModel) selectedMessage,
    double height = 50,
    double width = double.infinity,
    double messagesHeight = 400,
    double messageCardWidth = 100,
    double messageCardHeight = 100,
    double imageSpacing = 20,
    double maxWidthConstraints = 400,
    double positionedImage = 28,
  }) {
    return FiltersSectionWebWidget(
      selectedMessage: selectedMessage,
      height: height,
      imageSpacing: imageSpacing,
      maxWidthConstraints: maxWidthConstraints,
      messageCardHeight: messageCardHeight,
      messageCardWidth: messageCardWidth,
      messagesHeight: messagesHeight,
      positionedImage: positionedImage,
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
