import 'package:app/desafio_4/domain/models/filter_model.dart';
import 'package:flutter/material.dart';

class FiltersMock {
  static List<FilterModel> filters = [
    FilterModel(
      icon: Icons.pending_actions_outlined,
      title: 'Pinned',
      badgeNumber: '5',
      selected: false,
    ),
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
      icon: Icons.archive_outlined,
      title: 'Archived',
      badgeNumber: '',
      selected: false,
    ),
    FilterModel(
      icon: Icons.block,
      title: 'Blocked',
      badgeNumber: '',
      selected: false,
    ),
    FilterModel(
      icon: Icons.restore_from_trash_outlined,
      title: 'Trash',
      badgeNumber: '',
      selected: false,
    ),
  ];
}
