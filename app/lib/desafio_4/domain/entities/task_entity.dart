import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskEntity {
  final String id;
  final String title;
  final TimeOfDay time;
  final DateTime date;
  bool done;

  TaskEntity({
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

  DateTime get completeDate {
    return DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
  }

  bool get isLate {
    return completeDate.isBefore(DateTime.now());
  }
}
