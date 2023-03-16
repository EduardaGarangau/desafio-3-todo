// ignore_for_file: avoid_redundant_argument_values, prefer_int_literals, prefer_final_locals

import 'package:flutter/material.dart';
import '../design_system.dart';

class FilterSectionWidget extends StatefulWidget {
  final String title;
  final int messagesLength;
  final Widget messagesCardList;

  const FilterSectionWidget({
    required this.title,
    required this.messagesLength,
    required this.messagesCardList,
    super.key,
  });

  @override
  State<FilterSectionWidget> createState() => _FilterSectionWidgetState();
}

class _FilterSectionWidgetState extends State<FilterSectionWidget> {
  double turns = 0.0;
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeTextStyle = Theme.of(context).extension<TextStyleExtension>()!;
    final themeColor = Theme.of(context).extension<ThemeColorsExtension>()!;
    final messagesHeight = (widget.messagesLength * size.height * 0.12) + 10;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height:
          _expanded ? messagesHeight + size.height * 0.03 : size.height * 0.03,
      child: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.03,
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
                      _expanded ? turns = 0.5 : turns = 0.0;
                    });
                  },
                  child: AnimatedRotation(
                    turns: turns,
                    duration: const Duration(milliseconds: 300),
                    child: Icon(
                      Icons.expand_more,
                      color: themeColor.greyIconsColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            height: _expanded ? messagesHeight : 0,
            child: widget.messagesCardList,
          ),
        ],
      ),
    );
  }
}
