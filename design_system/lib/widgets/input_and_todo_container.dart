import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class InputAndTodoContainer extends StatelessWidget {
  final double width;
  final Widget child;

  const InputAndTodoContainer({
    required this.child,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Container(
      height: size.height * 0.07,
      width: width,
      padding: const EdgeInsets.only(
        left: 20,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: theme.searchCardColor,
      ),
      child: child,
    );
  }
}
