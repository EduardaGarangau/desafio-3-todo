// ignore_for_file: lines_longer_than_80_chars

import 'package:app/desafio_4/external/services/database_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService implements DatabaseService {
  @override
  Future<void> add(String userId, Map<String, dynamic> data) async {
    final firestore = FirebaseFirestore.instance;
    await firestore
        .collection('tasks')
        .doc(userId)
        .collection('tasks')
        .add(data);
    //await firestore.collection(collection).add(data);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getAll(String userId) async {
    final firestore = FirebaseFirestore.instance;
    return firestore.collection('tasks').doc(userId).collection('tasks').get();
    //return firestore.collection(collection).get();
  }

  @override
  Future<void> doneTask(String userId, String taskId, bool isDone) async {
    final firestore = FirebaseFirestore.instance;
    await firestore
        .collection('tasks')
        .doc(userId)
        .collection('tasks')
        .doc(taskId)
        .update({'done': isDone});
    //await firestore.collection(collection).doc(taskId).update({'done': isDone});
  }

  @override
  Future<void> addMessage(String collection, Map<String, dynamic> data) async {
    final firestore = FirebaseFirestore.instance;
    await firestore.collection(collection).add(data);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getMessages(
      String collection) async {
    final firestore = FirebaseFirestore.instance;
    return firestore.collection(collection).get();
  }
}
