// ignore_for_file: lines_longer_than_80_chars
import 'package:app/desafio_4/external/services/database_service.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
import 'package:app/desafio_4/external/services/mappers/document_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDatabaseService implements DatabaseService {
  @override
  Future<void> add(
    String collection,
    Map<String, dynamic> data, [
    String? userId,
  ]) async {
    final firestore = FirebaseFirestore.instance;

    try {
      if (userId != null) {
        final firestore = FirebaseFirestore.instance;
        await firestore
            .collection(collection)
            .doc(userId)
            .collection(collection)
            .add(data);
      } else {
        await firestore.collection(collection).add(data);
      }
    } on FirebaseException catch (e, stackTrace) {
      throw CustomException(
        'Erro ao adicionar!',
        e.stackTrace ?? stackTrace,
      );
    }
  }

  Future<List<Map<String, dynamic>>> get(String collection,
      [String? userId]) async {
    final firestore = FirebaseFirestore.instance;
    try {
      if (userId != null) {
        final documents = await firestore
            .collection(collection)
            .doc(userId)
            .collection(collection)
            .get();

        return documents.docs.map(DocumentMapper.fromDocumentTask).toList();
      } else {
        final documents = await firestore.collection(collection).get();
        return documents.docs.map(DocumentMapper.fromDocumentMessage).toList();
      }
    } on FirebaseException catch (e, stackTrace) {
      throw CustomException(
        'Erro ao carregar!',
        e.stackTrace ?? stackTrace,
      );
    }
  }

  @override
  Future<void> updateTask(String userId, String taskId, bool isDone) async {
    try {
      final firestore = FirebaseFirestore.instance;
      await firestore
          .collection('tasks')
          .doc(userId)
          .collection('tasks')
          .doc(taskId)
          .update({'done': isDone});
    } on FirebaseException catch (e, stackTrace) {
      throw CustomException(
        'Erro ao atualizar tarefa!',
        stackTrace,
      );
    }
  }
}
