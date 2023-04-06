import 'package:app/desafio_4/domain/models/messages_card_model.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/filters_section_widget.dart';
import 'package:design_system/widgets/search_message_widget.dart';
import 'package:flutter/material.dart';

class ChatListWebWidget extends StatelessWidget {
  final Function(MessageCardModel) selectedMessage;
  final double sectionHeight;
  final double sectionWidth;
  final double imageSpacing;
  final double maxWidthConstraints;
  final double messageCardHeight;
  final double messageCardWidth;
  final double messagesHeight;
  final double positionedImage;

  const ChatListWebWidget({
    super.key,
    this.sectionHeight = 50,
    this.sectionWidth = double.infinity,
    this.imageSpacing = 20,
    this.maxWidthConstraints = 400,
    this.messageCardHeight = 100,
    this.messageCardWidth = 100,
    this.messagesHeight = 400,
    this.positionedImage = 28,
    required this.selectedMessage,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.2,
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        children: [
          SearchMessageWidget(
            width: size.width * 0.18,
          ),
          const SizedBox(height: 20),
          FiltersSectionWidget.web(
            selectedMessage: selectedMessage,
            height: sectionHeight,
            width: sectionWidth,
            imageSpacing: imageSpacing,
            maxWidthConstraints: maxWidthConstraints,
            messageCardHeight: messageCardHeight,
            messageCardWidth: messageCardWidth,
            messagesHeight: messagesHeight,
            positionedImage: positionedImage,
          ),
        ],
      ),
    );
  }
}
