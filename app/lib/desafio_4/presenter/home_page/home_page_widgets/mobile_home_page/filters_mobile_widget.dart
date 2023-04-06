import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../../../../mocks/filters_mock.dart';

class FiltersMobileWidget extends StatelessWidget {
  final double height;

  const FiltersMobileWidget({
    this.height = 50,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final filters = FiltersMock.filters;
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: height,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemCount: filters.length,
          itemBuilder: (context, index) {
            return FilterButtonWidget.mobile(
              icon: filters[index].icon,
              title: filters[index].title,
              badgeNumber: filters[index].badgeNumber,
              selected: filters[index].selected,
              height: size.height * 0.05,
            );
          },
        ),
      ),
    );
  }
}
