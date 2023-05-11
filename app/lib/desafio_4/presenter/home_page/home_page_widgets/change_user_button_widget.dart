// ignore_for_file: sort_child_properties_last

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ChangeUserButtonWidget extends StatefulWidget {
  final Function() onTap;

  const ChangeUserButtonWidget({
    super.key,
    required this.onTap,
  });

  @override
  State<ChangeUserButtonWidget> createState() => _ChangeUserButtonWidgetState();
}

class _ChangeUserButtonWidgetState extends State<ChangeUserButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Change User'),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.purple,
      ),
      onPressed: widget.onTap,
    );
  }
}
