import 'package:app/desafio_4/mocks/filters_section_mock.dart';
import 'package:design_system/widgets/filter_section_widget.dart';
import 'package:flutter/material.dart';

import '../filters_section_widget.dart';
import '../messages_list_widget.dart';

class FiltersSectionMobileWidget extends StatelessWidget
    implements FiltersSectionWidget {
  final double height;
  final double width;
  final double messagesHeight;
  final double messageCardHeight;
  final double messageCardWidth;
  final double imageSpacing;
  final double maxWidthConstraints;
  final double positionedImage;

  const FiltersSectionMobileWidget({
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
              child: MessagesListWidget.mobile(
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
