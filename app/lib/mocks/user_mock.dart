import 'package:app/models/user_model.dart';

class UserMock {
  static UserModel user = UserModel(
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
}
