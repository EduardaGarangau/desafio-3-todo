import 'package:app/desafio_4/domain/value_objects/value_object.dart';
import 'package:dartz/dartz.dart';

class TitleVO extends ValueObject<String> {
  TitleVO(super.value);

  @override
  Either<String, Unit> validator() {
    if (value.length < 2 || value.isEmpty) {
      return left('Título inválido!');
    }
    return right(unit);
  }
}
