// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoModel {
  final int id;
  final String title;
  final TimeOfDay time;
  final DateTime date;
  bool done;
  //deixar imutável e usar copyWith para mudar o valor do atributo

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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'time': '${time.hour}:${time.minute}',
      'date': date.toIso8601String(),
      'done': done,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    final dateTime = DateFormat('HH:mm').parse(map['time']);
    final time = TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);

    return TodoModel(
      id: map['id'] as int,
      title: map['title'] as String,
      time: time,
      date: DateTime.parse(map['date']),
      done: map['done'] as bool,
    );
  }
}
