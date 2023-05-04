import 'package:app/desafio_4/mocks/user_mock.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/bio_card_widget.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_abilities_card.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_buttons_list_widget.dart';
import 'package:app/desafio_4/presenter/profile_page/profile_page_widgets/profile_header_widget.dart';
import 'package:app/desafio_4/presenter/stores/user_store.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final userStore = Modular.get<UserStore>();
    final senderUser = userStore.senderUser;
    final user = UserMock.user1;

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
            ProfileHeaderWidget.mobile(
              imageUrl: senderUser.imageUrl,
              name: senderUser.name,
              phone: '123-456-9877',
              isOnline: true,
              height: size.height * 0.17,
            ),
            SizedBox(height: size.height * 0.002),
            ProfileButtonsListWidget(
              height: size.height * 0.065,
              width: size.width,
              paddingLeftRight: size.width * 0.125,
              buttonsHeight: size.height * 0.03,
              buttonsWidth: size.width * 0.13,
            ),
            BioCardWidget(
              bio: user.bio,
              isWebPlatform: false,
            ),
            ProfileAbilitiesCard(
              abilities: user.habilities,
              width: size.width * 0.8,
              abilityCardHeight: size.height * 0.035,
            ),
          ],
        ),
      ),
    );
  }
}
