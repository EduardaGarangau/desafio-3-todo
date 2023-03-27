// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppBarButtonModel {
  final IconData icon;
  final String? title;
  final bool selected;

  AppBarButtonModel({
    required this.icon,
    this.title,
    required this.selected,
  });
}
