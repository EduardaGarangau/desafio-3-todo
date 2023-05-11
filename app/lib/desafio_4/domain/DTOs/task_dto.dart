import 'package:app/desafio_4/domain/value_objects/title_vo.dart';
import 'package:dartz/dartz.dart';

class TaskDTO {
  final TitleVO title;
  final DateTime date;
  final bool done;

  TaskDTO({
    required this.title,
    required this.date,
    required this.done,
  });

  Either<String, Unit> validator() {
    return title.validator();
  }
}
