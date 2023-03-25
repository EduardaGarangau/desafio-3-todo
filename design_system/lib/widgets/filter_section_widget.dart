// ignore_for_file: avoid_redundant_argument_values, prefer_int_literals, prefer_final_locals

import 'package:flutter/material.dart';
import '../design_system.dart';

class FilterSectionWidget extends StatefulWidget {
  final String title;
  final int messagesLength;
  final Widget messagesCardList;
  final bool isWebPlatform;

  const FilterSectionWidget({
    required this.title,
    required this.messagesLength,
    required this.messagesCardList,
    required this.isWebPlatform,
    super.key,
  });

  @override
  State<FilterSectionWidget> createState() => _FilterSectionWidgetState();
}

class _FilterSectionWidgetState extends State<FilterSectionWidget>
    with SingleTickerProviderStateMixin {
  bool _expanded = false;
  late Size size;
  late double messagesHeight;
  late AnimationController? _controller;
  late Animation<Size>? _heightAnimation;
  late Animation<Size>? _heightMessagesAnimation;
  late Animation<double>? _turnAnimation;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
    messagesHeight = (widget.messagesLength * size.height * 0.12) + 10;

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _heightAnimation = Tween<Size>(
      begin: Size(double.infinity, size.height * 0.03),
      end: Size(double.infinity, messagesHeight + size.height * 0.035),
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.linear,
      ),
    );

    _heightMessagesAnimation = Tween<Size>(
      begin: const Size(double.infinity, 0),
      end: Size(double.infinity, messagesHeight),
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: Curves.linear,
      ),
    );

    _turnAnimation = Tween<double>(
      begin: 0.0,
      end: 0.5,
    ).animate(_controller!);
    _heightAnimation?.addListener(() {
      setState(() {});
    });

    _heightMessagesAnimation?.addListener(() {
      setState(() {});
    });

    _turnAnimation?.addListener(() {
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

    return Container(
      height: _heightAnimation?.value.height,
      child: Column(
        children: [
          Container(
            width: widget.isWebPlatform ? size.width * 0.2 : size.width,
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
                      _expanded
                          ? _controller?.forward()
                          : _controller?.reverse();
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
          Container(
            height: _heightMessagesAnimation?.value.height,
            child: widget.messagesCardList,
          ),
        ],
      ),
    );
  }
}
