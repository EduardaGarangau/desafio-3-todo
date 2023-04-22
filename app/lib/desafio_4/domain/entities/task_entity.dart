// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:intl/intl.dart';

class TaskEntity {
  final String id;
  final String title;
  final DateTime date;
  final bool done;

  TaskEntity({
    required this.id,
    required this.title,
    required this.date,
    required this.done,
  });

  String get getDate {
    return DateFormat.yMMMMd('en_US').format(date);
  }

  String get getTime {
    return DateFormat.Hm('en_US').format(date);
  }

  bool get isLate {
    return date.isBefore(DateTime.now());
  }

  TaskEntity copyWith({
    String? id,
    String? title,
    DateTime? date,
    bool? done,
  }) {
    return TaskEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      date: date ?? this.date,
      done: done ?? this.done,
    );
  }
}
