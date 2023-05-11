import 'package:app/desafio_4/domain/value_objects/value_object.dart';
import 'package:dartz/dartz.dart';

class TextVO extends ValueObject<String> {
  TextVO(super.value);

  @override
  Either<String, Unit> validator() {
    if (value.isEmpty) {
      return left('Mensagem inválida');
    }
    return right(unit);
  }
}
