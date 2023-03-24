import 'package:app/desafio_3/models/filter_model.dart';
import 'package:flutter/material.dart';

class FiltersMock {
  static List<FilterModel> filters = [
    FilterModel(
      icon: Icons.chat_outlined,
      title: 'All',
      badgeNumber: '35',
      selected: true,
    ),
    FilterModel(
      icon: Icons.video_chat_outlined,
      title: 'Live Chat',
      badgeNumber: '2',
      selected: false,
    ),
    FilterModel(
      icon: Icons.book,
      title: 'Live Chat',
      badgeNumber: '2',
      selected: false,
    ),
  ];
}
