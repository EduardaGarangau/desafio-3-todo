import 'package:flutter/material.dart';

import '../domain/models/profile_button_model.dart';

class ProfileButtonsMocks {
  static List<ProfileButtonModel> profileButtons = [
    ProfileButtonModel(
      icon: Icons.phone_in_talk_outlined,
      isAvailable: true,
    ),
    ProfileButtonModel(
      icon: Icons.video_camera_front_outlined,
      isAvailable: true,
    ),
    ProfileButtonModel(
      icon: Icons.volume_off_outlined,
      isAvailable: true,
    ),
    ProfileButtonModel(
      icon: Icons.shopping_bag_outlined,
      isAvailable: false,
    ),
  ];
}
