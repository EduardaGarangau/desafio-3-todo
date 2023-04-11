import 'package:app/desafio_4/external/services/database_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../document_dto.dart';

class FirestoreService implements DatabaseService {
  @override
  Future<void> add(String collection, Map<String, dynamic> data) async {
    final firestore = FirebaseFirestore.instance;
    await firestore.collection(collection).add(data);
  }

  @override
  Future<List<DocumentDTO>> getAll(String collection) async {
    final documents = <DocumentDTO>[];
    final firestore = FirebaseFirestore.instance;
    final querySnapshot = await firestore.collection(collection).get();

    for (final doc in querySnapshot.docs) {
      final dto = DocumentDTO(id: doc.id, data: doc.data());
      documents.add(dto);
    }
    return documents;
  }
}
