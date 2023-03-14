import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class InputAndTodoContainer extends StatelessWidget {
  final Widget child;

  const InputAndTodoContainer({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Container(
      height: size.height * 0.07,
      width: size.width * 0.9,
      padding: const EdgeInsets.only(
        left: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: theme.searchCardColor,
      ),
      child: child,
    );
  }
}
