// ignore_for_file: lines_longer_than_80_chars
import 'package:app/desafio_4/external/services/database_service.dart';
import 'package:app/desafio_4/external/services/errors/custom_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService implements DatabaseService {
  @override
  Future<void> add(String userId, Map<String, dynamic> data) async {
    try {
      final firestore = FirebaseFirestore.instance;
      await firestore
          .collection('tasks')
          .doc(userId)
          .collection('tasks')
          .add(data);
    } on FirebaseException catch (e, stackTrace) {
      throw CustomException(
        'Erro ao adicionar tarefa!',
        stackTrace,
      );
    }
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getAll(String userId) async {
    try {
      final firestore = FirebaseFirestore.instance;
      return firestore
          .collection('tasks')
          .doc(userId)
          .collection('tasks')
          .get();
    } on FirebaseException catch (e, stackTrace) {
      throw CustomException(
        'Erro ao carregar tarefas!',
        stackTrace,
      );
    }
  }

  @override
  Future<void> doneTask(String userId, String taskId, bool isDone) async {
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

  @override
  Future<void> addMessage(String collection, Map<String, dynamic> data) async {
    try {
      final firestore = FirebaseFirestore.instance;
      await firestore.collection(collection).add(data);
    } on FirebaseException catch (e, stackTrace) {
      throw CustomException(
        'Erro ao enviar mensagem!',
        stackTrace,
      );
    }
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getMessages(
    String collection,
  ) async {
    try {
      final firestore = FirebaseFirestore.instance;
      return firestore.collection(collection).get();
    } on FirebaseException catch (e, stackTrace) {
      throw CustomException(
        'Erro ao carregar mensagens!',
        stackTrace,
      );
    }
  }
}
