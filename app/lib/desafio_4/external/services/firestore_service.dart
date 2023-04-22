import 'package:app/desafio_4/external/services/database_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService implements DatabaseService {
  @override
  Future<void> add(String collection, Map<String, dynamic> data) async {
    final firestore = FirebaseFirestore.instance;
    await firestore.collection(collection).add(data);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getAll(String collection) async {
    final firestore = FirebaseFirestore.instance;
    return firestore.collection(collection).get();
  }

  @override
  Future<void> doneTask(String collection, String taskId, bool isDone) async {
    final firestore = FirebaseFirestore.instance;
    await firestore.collection(collection).doc(taskId).update({'done': isDone});
  }
}
