import 'package:design_system/widgets/filter_button_mobile_widget.dart';
import 'package:design_system/widgets/filter_button_web_widget.dart';
import 'package:flutter/material.dart';

class FilterButtonWidget extends StatelessWidget {
  factory FilterButtonWidget.web({
    required IconData icon,
    required String title,
    required bool selected,
    required String? badgeNumber,
    double height = 50.0,
    double width = 160.0,
  }) {
    return FilterButtonWebWidget(
      icon: icon,
      title: title,
      selected: selected,
      badgeNumber: badgeNumber,
      height: height,
      width: width,
    );
  }

  factory FilterButtonWidget.mobile({
    required IconData icon,
    required String title,
    required String? badgeNumber,
    required bool selected,
    double height = 33.0,
  }) {
    return FilterButtonMobileWidget(
      icon: icon,
      title: title,
      badgeNumber: badgeNumber,
      selected: selected,
      height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
