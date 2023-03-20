import 'package:app/widgets/profile_page/profile_card_widget.dart';
import 'package:app/widgets/profile_page/todos_list_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ProfileCardWidget(),
          Expanded(
            child: TodosListWidget(),
          ),
        ],
      ),
    );
  }
}
