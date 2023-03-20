// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoModel with ChangeNotifier {
  final int id;
  final String title;
  final TimeOfDay time;
  final DateTime date;
  bool done;

  TodoModel({
    required this.id,
    required this.title,
    required this.time,
    required this.date,
    this.done = false,
  });

  String get getDate {
    return DateFormat.yMMMMd('en_US').format(date);
  }

  String get getTime {
    return '${time.hour}:${time.minute} ${time.period.toString().split('.')[1].toUpperCase()}';
  }

  void toggleDone() {
    done = !done;
    notifyListeners();
  }

  @override
  String toString() {
    return 'Title: $title, Date: $getDate, Time: $getTime';
  }
}
