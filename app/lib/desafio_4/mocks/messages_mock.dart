import '../domain/models/message_model.dart';

class MessagesMock {
  static List<MessageModel> messages = [
    MessageModel(
      hour: '13:32',
      isMessageReceived: true,
      messageContent: 'How does it sound for you',
    ),
    MessageModel(
      hour: '13:45',
      isMessageReceived: false,
      messageContent: 'Yes, that sounds good!',
    ),
    MessageModel(
      hour: '13:53',
      isMessageReceived: true,
      messageContent: 'Good! Send you their visual',
    ),
    MessageModel(
      hour: '14:00',
      isMessageReceived: false,
      messageContent: 'Wow! This look is amazing, I love it. Thanks',
    ),
    MessageModel(
      hour: '13:53',
      isMessageReceived: true,
      messageContent: 'Good! Send you their visual',
    ),
    MessageModel(
      hour: '14:00',
      isMessageReceived: false,
      messageContent: 'Wow! This look is amazing, I love it. Thanks',
    ),
  ].reversed.toList();
}
