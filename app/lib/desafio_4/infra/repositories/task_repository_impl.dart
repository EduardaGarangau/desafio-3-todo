import 'package:app/desafio_4/domain/entities/task_entity.dart';
import 'package:app/desafio_4/infra/datasources/task_datasource.dart';
import 'package:app/desafio_4/infra/mappers/task_entity_mapper.dart';

import '../../domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskDatasource datasource;

  TaskRepositoryImpl(this.datasource);

  @override
  Future<void> addTask(TaskEntity taskEntity) async {
    final entityAsMap = TaskEntityMapper.toMap(taskEntity);
    await datasource.addTask(entityAsMap);
  }

  @override
  Future<List<TaskEntity>> getAllTasks() async {
    final documents = await datasource.getAll();
    return documents.map(TaskEntityMapper.fromMap).toList();
  }
}
