import 'package:app/desafio_4/domain/entities/message_entity.dart';
import 'package:app/desafio_4/presenter/home_page/home_page_widgets/mobile_home_page/filters_mobile_widget.dart';
import 'package:app/desafio_4/presenter/stores/chat_store.dart';
import 'package:app/desafio_4/presenter/stores/user_store.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../home_page_widgets/change_user_button_widget.dart';
import '../home_page_widgets/filters_section_widget.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key});

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  void initState() {
    super.initState();
    context.read<ChatStore>().getMessages();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final userStore = Modular.get<UserStore>();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        backgroundColor: AppColors.darkGrey,
        actions: [
          ChangeUserButtonWidget(
            onTap: () {
              userStore.changeUser();
              setState(() {});
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 20,
              left: 20,
              right: 20,
            ),
            child: SearchMessageWidget(
              width: size.width * 0.9,
              height: size.height * 0.07,
            ),
          ),
          FiltersMobileWidget(
            height: size.height * 0.05,
          ),
          SizedBox(height: size.height * 0.015),
          Expanded(
            child: Column(
              children: [
                ScopedBuilder<ChatStore, List<MessageEntity>>(
                  store: Modular.get<ChatStore>(),
                  onLoading: (context) => const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  onError: (context, error) => Text(error),
                  onState: (context, state) {
                    return FilterSectionWidget(
                      title: 'Unread',
                      content: InkWell(
                        onTap: () {
                          Modular.to.pushNamed(
                            '/chat/',
                            arguments: [
                              userStore.receiverUser.name,
                              userStore.receiverUser.imageUrl
                            ],
                          );
                        },
                        child: MessageCardWidget(
                          userImageUrl: userStore.receiverUser.imageUrl,
                          name: userStore.receiverUser.name,
                          badgeNumber: '1',
                          number: '123-456-9877',
                          messageContent: state.last.text,
                          messageHour: state.last.getTime,
                          hasOnlineFlag: true,
                          isMuted: false,
                          height: 88,
                          width: size.width,
                          positionedImage: 24,
                          imageSpacing: size.width * 0.03,
                        ),
                      ),
                      height: size.height * 0.03,
                      width: size.width,
                    );
                  },
                ),
              ],
            ),
          ),
          // FiltersSectionWidget.mobile(
          //   height: size.height * 0.03,
          //   width: size.width,
          //   messagesHeight: 105,
          //   imageSpacing: size.width * 0.03,
          //   messageCardHeight: 88,
          //   positionedImage: 24,
          // ),
          InkWell(
            onTap: () => Modular.to.pushNamed('/profile/'),
            child: BottomNavigatorWidget(
              height: size.height * 0.11,
            ),
          ),
        ],
      ),
    );
  }
}
