import 'package:app/desafio_4/presenter/home_page/home_page_widgets/messages_list_widget.dart';
import 'package:design_system/widgets/filter_section_widget.dart';
import 'package:flutter/material.dart';

import '../../../mocks/filters_section_mock.dart';
import '../../../domain/models/messages_card_model.dart';

class FiltersSectionWidget extends StatelessWidget {
  final bool isWebPlatform;
  final Function(MessageCardModel)? selectedMessage;

  const FiltersSectionWidget({
    required this.isWebPlatform,
    this.selectedMessage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final filtersSection = FiltersSectionMock.filtersSection;

    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: filtersSection.length,
        itemBuilder: (context, index) {
          final filterSection = filtersSection[index];

          return FilterSectionWidget(
            title: filterSection.title,
            listLength: filterSection.messages.length,
            isWebPlatform: false,
            widgetList: MessagesListWidget(
              messages: filterSection.messages,
              isWebPlatform: isWebPlatform,
              selectedMessage: selectedMessage,
            ),
          );
        },
      ),
    );
  }
}
