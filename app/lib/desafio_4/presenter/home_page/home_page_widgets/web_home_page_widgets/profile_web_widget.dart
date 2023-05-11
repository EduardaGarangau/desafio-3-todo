// ignore_for_file: avoid_redundant_argument_values

import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/profile_card_web_widget.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/web_home_page_widgets/todos_web_widget.dart';
import 'package:flutter/material.dart';

class ProfileWebWidget extends StatelessWidget {
  const ProfileWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          ProfileCardWebWidget(),
          TodosWebWidget(),
        ],
      ),
    );
  }
}
