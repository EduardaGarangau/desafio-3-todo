import 'package:app/desafio_4/mocks/filters_mock.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class FilterButtonsWebWidget extends StatelessWidget {
  final double height;
  final double width;
  final double buttonHeight;
  final double buttonWidth;

  const FilterButtonsWebWidget({
    this.height = 700,
    this.width = 200,
    this.buttonHeight = 50,
    this.buttonWidth = 160,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final filters = FiltersMock.filters;

    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.only(top: 30),
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final filter = filters[index];

          return FilterButtonWidget.web(
            icon: filter.icon,
            title: filter.title,
            selected: filter.selected,
            badgeNumber: filter.badgeNumber,
            height: buttonHeight,
            width: buttonWidth,
          );
        },
      ),
    );
  }
}
