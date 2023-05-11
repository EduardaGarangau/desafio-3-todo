class CustomException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  CustomException(this.message, [this.stackTrace]);
}

class InvalidParamsException extends CustomException {
  InvalidParamsException(super.message, [super.stackTrace]);
}
