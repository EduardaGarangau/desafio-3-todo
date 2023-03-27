import 'package:app/desafio_4/mocks/user_mock.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/bio_card_widget.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_abilities_card.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_buttons_list_widget.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_header_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final user = UserMock.user;

    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        padding: const EdgeInsets.only(
          top: 35,
          right: 12,
          left: 15,
        ),
        height: size.height * 0.51,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
          color: themeColors.profileBGColor,
        ),
        child: Column(
          children: [
            ProfileHeaderWidget(
              imageUrl: user.imageUrl,
              name: user.name,
              phone: user.phone,
              isOnline: user.isOnline,
              isWebPlatform: false,
            ),
            const SizedBox(height: 10),
            const ProfileButtonsListWidget(isWebPlatform: false),
            BioCardWidget(
              bio: user.bio,
              isWebPlatform: false,
            ),
            ProfileAbilitiesCard(
              abilities: user.habilities,
              isWebPlatform: false,
            ),
          ],
        ),
      ),
    );
  }
}