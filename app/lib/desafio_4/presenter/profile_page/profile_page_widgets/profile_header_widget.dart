// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_header_mobile_widget.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_header_web_widget.dart';
import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  factory ProfileHeaderWidget.mobile({
    required String imageUrl,
    required String name,
    required String phone,
    required bool isOnline,
    double height = 113,
  }) {
    return ProfileHeaderMobileWidget(
      imageUrl: imageUrl,
      name: name,
      phone: phone,
      isOnline: isOnline,
      height: height,
    );
  }

  factory ProfileHeaderWidget.web({
    required String imageUrl,
    required String name,
    required String phone,
    required bool isOnline,
    double height = 100,
  }) {
    return ProfileHeaderWebWidget(
      imageUrl: imageUrl,
      name: name,
      phone: phone,
      isOnline: isOnline,
      height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
