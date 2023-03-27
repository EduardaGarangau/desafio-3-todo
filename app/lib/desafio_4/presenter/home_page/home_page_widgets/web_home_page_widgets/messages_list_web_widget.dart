import 'package:app/desafio_4/presenter/home_page/home_page_widgets/filters_section_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';

import '../../../../domain/models/messages_card_model.dart';

class MessagesListWebWidget extends StatelessWidget {
  final Function(MessageCardModel)? selectedMessage;

  const MessagesListWebWidget({
    super.key,
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
          const SearchMessageWidget(isWebPlatform: true),
          const SizedBox(height: 20),
          FiltersSectionWidget(
            isWebPlatform: true,
            selectedMessage: selectedMessage,
          ),
        ],
      ),
    );
  }
}
