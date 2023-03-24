// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FilterModel {
  final IconData icon;
  final String title;
  final String badgeNumber;
  final bool selected;

  FilterModel({
    required this.icon,
    required this.title,
    required this.badgeNumber,
    required this.selected,
  });
}
