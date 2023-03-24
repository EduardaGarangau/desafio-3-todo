import 'package:app/desafio_3/widgets/home_page/messages_list_widget.dart';
import 'package:design_system/widgets/filter_section_widget.dart';
import 'package:flutter/material.dart';

import '../../mocks/filters_section_model.dart';

class FiltersSectionWidget extends StatelessWidget {
  const FiltersSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final filtersSection = FiltersSectionMock.filtersSection;

    return Expanded(
      child: ListView.builder(
        itemCount: filtersSection.length,
        itemBuilder: (context, index) {
          final filterSection = filtersSection[index];

          return FilterSectionWidget(
            title: filterSection.title,
            messagesLength: filterSection.messages.length,
            messagesCardList: MessagesListWidget(
              messages: filterSection.messages,
            ),
          );
        },
      ),
    );
  }
}
