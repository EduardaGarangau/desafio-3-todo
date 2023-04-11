import 'package:app/desafio_4/external/services/database_service.dart';
import 'package:app/desafio_4/infra/datasources/task_datasource.dart';

class TaskDatasourceImpl implements TaskDatasource {
  final DatabaseService service;

  TaskDatasourceImpl(this.service);

  @override
  Future<void> addTask(Map<String, dynamic> task) async {
    await service.add('tasks', task);
  }

  @override
  Future<List<Map<String, dynamic>>> getAll() async {
    final response = <Map<String, dynamic>>[];
    final documents = await service.getAll('tasks');
    for (final document in documents) {
      final doc = {
        'id': document.id,
        'title': document.data['title'],
        'time': document.data['time'],
        'date': document.data['date'],
        'done': document.data['done'],
      };
      response.add(doc);
    }
    return response;
  }
}
