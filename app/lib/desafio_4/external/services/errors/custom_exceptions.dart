class ServiceException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  ServiceException(this.message, this.stackTrace);
}
