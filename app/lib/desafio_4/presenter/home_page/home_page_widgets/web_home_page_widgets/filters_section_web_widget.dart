import 'package:app/desafio_4/mocks/filters_section_mock.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/filters_section_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/messages_list_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../domain/models/messages_card_model.dart';

class FiltersSectionWebWidget extends StatelessWidget
    implements FiltersSectionWidget {
  final Function(MessageCardModel) selectedMessage;
  final double height;
  final double width;
  final double messagesHeight;
  final double messageCardHeight;
  final double messageCardWidth;
  final double imageSpacing;
  final double maxWidthConstraints;
  final double positionedImage;

  const FiltersSectionWebWidget({
    required this.selectedMessage,
    this.height = 50,
    this.width = double.infinity,
    this.messagesHeight = 400,
    this.messageCardWidth = 100,
    this.messageCardHeight = 100,
    this.imageSpacing = 20,
    this.maxWidthConstraints = 400,
    this.positionedImage = 28,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final filtersSection = FiltersSectionMock.filtersSection;

    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: height / 2),
        itemCount: filtersSection.length,
        itemBuilder: (context, index) {
          final filterSection = filtersSection[index];

          return FilterSectionWidget(
            title: filterSection.title,
            height: height,
            width: width,
            content: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: MessagesListWidget.web(
                selectedMessage: selectedMessage,
                messages: filterSection.messages,
                height: messagesHeight,
                imageSpacing: imageSpacing,
                maxWidthConstraints: maxWidthConstraints,
                messageCardHeight: messageCardHeight,
                messageCardWidth: messageCardWidth,
                positionedImage: positionedImage,
              ),
            ),
          );
        },
      ),
    );
  }
}
