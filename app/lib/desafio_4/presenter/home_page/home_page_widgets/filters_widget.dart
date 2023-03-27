import 'package:app/desafio_4/mocks/filters_mock.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class FiltersWidget extends StatelessWidget {
  const FiltersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final filters = FiltersMock.filters;
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.05,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemCount: filters.length,
          itemBuilder: (context, index) {
            return FilterButtonWidget(
              isWebPlatform: false,
              icon: filters[index].icon,
              title: filters[index].title,
              badgeNumber: filters[index].badgeNumber,
              selected: filters[index].selected,
            );
          },
        ),
      ),
    );
  }
}
