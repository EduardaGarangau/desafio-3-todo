import 'package:flutter/material.dart';

import '../../domain/entities/user_entity.dart';
import '../../mocks/user_mock.dart';

class UserStore extends ValueNotifier<String> {
  List<UserEntity> users = [UserMock.user1, UserMock.user2];

  UserStore() : super('russelhue');

  void changeUser() {
    if (value == users[0].userId) {
      value = users[1].userId;
    } else {
      value = users[0].userId;
    }
  }

  UserEntity get senderUser {
    return users.firstWhere((user) => user.userId == value);
  }

  UserEntity get receiverUser {
    return users.firstWhere((user) => user.userId != value);
  }
}
