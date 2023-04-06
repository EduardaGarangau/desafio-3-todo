// ignore_for_file: avoid_redundant_argument_values, prefer_int_literals, prefer_final_locals

import 'package:flutter/material.dart';
import '../design_system.dart';

class FilterSectionWidget extends StatefulWidget {
  final String title;
  final Widget content;
  final double height;
  final double width;

  const FilterSectionWidget({
    required this.title,
    required this.content,
    this.height = 50,
    this.width = double.infinity,
    super.key,
  });

  @override
  State<FilterSectionWidget> createState() => _FilterSectionWidgetState();
}

class _FilterSectionWidgetState extends State<FilterSectionWidget>
    with SingleTickerProviderStateMixin {
  bool _expanded = false;
  late AnimationController? _controller;
  late Animation<double>? _turnAnimation;
  late Animation<double>? _contentAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _contentAnimation = CurvedAnimation(
      parent: _controller!,
      curve: Curves.fastOutSlowIn,
    );

    _turnAnimation = Tween<double>(
      begin: 0.0,
      end: 0.5,
    ).animate(_controller!);

    _controller?.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColor = Theme.of(context).extension<ThemeColorsExtension>()!;

    return Column(
      children: [
        Container(
          width: widget.width,
          height: widget.height,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: themeTextStyle.filterSectionTextStyle,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _expanded = !_expanded;
                    _expanded ? _controller?.forward() : _controller?.reverse();
                  });
                },
                child: RotationTransition(
                  turns: _turnAnimation!,
                  child: Icon(
                    Icons.expand_more,
                    color: themeColor.greyIconsColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizeTransition(
          sizeFactor: _contentAnimation!,
          child: widget.content,
        ),
      ],
    );
  }
}
