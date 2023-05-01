import '../domain/entities/user_entity.dart';

class UserMock {
  static UserEntity user1 = UserEntity(
    userId: 'russelhue',
    imageUrl: 'lib/assets/images/russel_hue.jpg',
    name: 'Russel Hue',
    isOnline: true,
    phone: '+(1) 345-123-5467',
    bio: 'Hello Everybody! Our company are looking for:',
    habilities: [
      'UI/UX Designer',
      'Project Manager',
      'QA',
      'SEO',
      'Java Script Developer'
    ],
  );

  static UserEntity user2 = UserEntity(
    userId: 'johntornton',
    imageUrl: 'lib/assets/images/john_tornton.jpg',
    name: 'John Tornton',
    isOnline: true,
    phone: '+(1) 345-123-5467',
    bio: 'Hello Everybody! Our company are looking for:',
    habilities: [
      'UI/UX Designer',
      'Project Manager',
      'QA',
      'SEO',
      'Java Script Developer'
    ],
  );
}
