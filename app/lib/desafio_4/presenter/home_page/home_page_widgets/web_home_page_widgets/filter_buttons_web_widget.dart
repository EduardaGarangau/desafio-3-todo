import 'package:app/desafio_4/mocks/filters_mock.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class FilterButtonsWebWidget extends StatelessWidget {
  const FilterButtonsWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final filters = FiltersMock.filters;

    return Container(
      width: size.width * 0.15,
      height: size.height,
      padding: const EdgeInsets.only(top: 30),
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final filter = filters[index];

          return FilterButtonWidget(
            icon: filter.icon,
            title: filter.title,
            selected: filter.selected,
            badgeNumber: filter.badgeNumber,
            isWebPlatform: true,
          );
        },
      ),
    );
  }
}
