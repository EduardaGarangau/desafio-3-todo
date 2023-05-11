import 'package:dartz/dartz.dart';

abstract class ValueObject<T> {
  final T value;
  const ValueObject(this.value);

  Either<String, Unit> validator();
}
