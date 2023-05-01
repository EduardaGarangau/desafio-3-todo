class UserEntity {
  final String userId;
  final String imageUrl;
  final String name;
  final bool isOnline;
  final String phone;
  final String bio;
  final List<String> habilities;

  UserEntity({
    required this.userId,
    required this.imageUrl,
    required this.name,
    required this.isOnline,
    required this.phone,
    required this.bio,
    required this.habilities,
  });
}
