import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/bio_card_widget.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_abilities_card.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_buttons_list_widget.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_header_widget.dart';
import 'package:app/desafio_4/mocks/user_mock.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileCardWebWidget extends StatelessWidget {
  const ProfileCardWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final user = UserMock.user;

    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 35,
        right: 10,
      ),
      child: Container(
        height: size.height * 0.36,
        width: size.width * 0.18,
        padding: const EdgeInsets.only(
          top: 15,
          left: 20,
        ),
        decoration: BoxDecoration(
          color: themeColors.profileBGColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeaderWidget(
              imageUrl: user.imageUrl,
              name: user.name,
              phone: user.phone,
              isOnline: user.isOnline,
              isWebPlatform: true,
            ),
            const SizedBox(height: 15),
            const ProfileButtonsListWidget(isWebPlatform: true),
            BioCardWidget(
              bio: user.bio,
              isWebPlatform: true,
            ),
            ProfileAbilitiesCard(
              abilities: user.habilities,
              isWebPlatform: true,
            ),
          ],
        ),
      ),
    );
  }
}
