// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  final String imageUrl;
  final String name;
  final bool isOnline;
  final String phone;
  final String bio;
  final List<String> habilities;

  UserModel({
    required this.imageUrl,
    required this.name,
    required this.isOnline,
    required this.phone,
    required this.bio,
    required this.habilities,
  });
}
