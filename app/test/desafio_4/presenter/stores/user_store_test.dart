import 'package:app/desafio_4/presenter/stores/user_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late UserStore userStore;

  setUpAll(() {
    userStore = UserStore();
  });

  test('Sender user should be russelhue when app start', () {
    final senderUser = userStore.senderUser;
    expect(senderUser.userId, equals('russelhue'));
  });

  test('Sender user should be johntornton when toggle change user', () {
    userStore.changeUser();
    final senderUser = userStore.senderUser;
    expect(senderUser.userId, equals('johntornton'));
  });

  test('Receiver user should be johntornton when Sender is russelhue', () {
    final senderUser = userStore.senderUser;
    final receiverUser = userStore.receiverUser;
    expect(senderUser.userId, equals('russelhue'));
    expect(receiverUser.userId, equals('johntornton'));
  });
}
