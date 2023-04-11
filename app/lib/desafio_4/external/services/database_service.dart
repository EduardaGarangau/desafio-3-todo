import '../document_dto.dart';

abstract class DatabaseService {
  Future<void> add(String collection, Map<String, dynamic> data);

  Future<List<DocumentDTO>> getAll(String collection);
}
