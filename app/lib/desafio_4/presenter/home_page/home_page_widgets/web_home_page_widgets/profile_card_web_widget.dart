import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/bio_card_widget.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_abilities_card.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_buttons_list_widget.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_header_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../../mocks/user_mock.dart';

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
        left: 20,
        right: 20,
      ),
      child: Container(
        height: size.height * 0.36,
        width: size.width * 0.25,
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
        ),
        decoration: BoxDecoration(
          color: themeColors.profileBGColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeaderWidget.web(
              imageUrl: user.imageUrl,
              name: user.name,
              phone: user.phone,
              isOnline: user.isOnline,
              height: size.height * 0.05,
            ),
            const SizedBox(height: 15),
            ProfileButtonsListWidget(
              height: size.height * 0.05,
              width: size.width * 0.9,
              buttonsHeight: size.height * 0.02,
              buttonsWidth: size.width * 0.025,
              buttonsSpacing: 10,
              paddingLeftRight: 20,
              roundedBorderSize: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: BioCardWidget(
                bio: user.bio,
                isWebPlatform: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: ProfileAbilitiesCard(
                abilities: user.habilities,
                abilityCardHeight: size.height * 0.03,
                runSpacing: 5,
                spacing: 4,
                width: size.width * 0.2,
                abilityCardFontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
