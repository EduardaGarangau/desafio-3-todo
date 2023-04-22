class TaskError implements Exception {
  final String message;

  TaskError(this.message);
}

class TaskUnknownError extends TaskError {
  TaskUnknownError(super.message);
}

class TaskFirestoreError extends TaskError {
  TaskFirestoreError(super.message);
}

class TaskNotFoundError extends TaskError {
  TaskNotFoundError(super.message);
}
