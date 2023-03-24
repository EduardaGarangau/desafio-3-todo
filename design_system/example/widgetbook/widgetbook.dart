// ignore_for_file: lines_longer_than_80_chars

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      categories: [
        WidgetbookCategory(
          name: 'design system',
          widgets: [
            WidgetbookComponent(
              name: 'Search Message',
              useCases: [
                WidgetbookUseCase(
                  name: 'Search Message Card - Desktop',
                  builder: (context) {
                    return const SearchMessageWidget(
                      isWebPlatform: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Search Message Card - Mobile',
                  builder: (context) {
                    return const SearchMessageWidget(
                      isWebPlatform: false,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Badge',
              useCases: [
                WidgetbookUseCase(
                  name: 'selected',
                  builder: (context) {
                    return const BadgeWidget(
                      number: '35',
                      selected: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'unselected',
                  builder: (context) {
                    return const BadgeWidget(
                      number: '2',
                      selected: false,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Filter Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'selected',
                  builder: (context) {
                    return const FilterButtonWidget(
                      icon: Icons.chat_outlined,
                      title: 'All',
                      badgeNumber: '35',
                      selected: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'unselected',
                  builder: (context) {
                    return const FilterButtonWidget(
                      icon: Icons.video_chat_outlined,
                      title: 'Live Chat',
                      badgeNumber: '2',
                      selected: false,
                    );
                  },
                ),
              ],
            ),
            // WidgetbookComponent(
            //   name: 'Filter Sections',
            //   useCases: [
            //     WidgetbookUseCase(
            //       name: 'Filter Section',
            //       builder: (context) {
            //         return const FilterSectionWidget(
            //           title: 'Unread',
            //           messages: [
            //             MessageCardWidget(
            //               userImageUrl: null,
            //               name: 'John Tornton',
            //               badgeNumber: '5',
            //               number: '+(1) 345-123-5467',
            //               messageContent: 'Maybe on Friday? Can you show...',
            //               messageHour: '12:30',
            //               hasOnlineFlag: true,
            //               isMuted: true,
            //             ),
            //             MessageCardWidget(
            //               userImageUrl: null,
            //               name: 'John Tornton',
            //               badgeNumber: '5',
            //               number: '+(1) 345-123-5467',
            //               messageContent: 'Maybe on Friday? Can you show...',
            //               messageHour: '12:30',
            //               hasOnlineFlag: true,
            //               isMuted: true,
            //             ),
            //             MessageCardWidget(
            //               userImageUrl: null,
            //               name: 'John Tornton',
            //               badgeNumber: '5',
            //               number: '+(1) 345-123-5467',
            //               messageContent: 'Maybe on Friday? Can you show...',
            //               messageHour: '12:30',
            //               hasOnlineFlag: true,
            //               isMuted: true,
            //             ),
            //           ],
            //         );
            //       },
            //     ),
            //   ],
            // ),
            WidgetbookComponent(
              name: 'User Image',
              useCases: [
                WidgetbookUseCase(
                  name: 'with badge',
                  builder: (context) {
                    return const UserImageWidget(
                      userImageUrl: null,
                      radiusSize: 28,
                      badgeNumber: '5',
                      hasBadge: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'without badge',
                  builder: (context) {
                    return const UserImageWidget(
                      userImageUrl: null,
                      radiusSize: 40,
                      badgeNumber: null,
                      hasBadge: false,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'User Online',
              useCases: [
                WidgetbookUseCase(
                  name: 'Online Flag',
                  builder: (context) {
                    return const OnlineFlagWidget();
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'User Name',
              useCases: [
                WidgetbookUseCase(
                  name: 'with online flag',
                  builder: (context) {
                    return const UserNameWidget(
                      name: 'John Tornton',
                      hasOnlineFlag: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'without online flag',
                  builder: (context) {
                    return const UserNameWidget(
                      name: 'Russel Hue',
                      hasOnlineFlag: false,
                      nameFontSize: 20,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Message Card',
              useCases: [
                WidgetbookUseCase(
                  name: 'with online flag',
                  builder: (context) {
                    return const MessageCardWidget(
                      userImageUrl: null,
                      name: 'John Tornton',
                      badgeNumber: '5',
                      number: '+(1) 345-123-5467',
                      messageContent: 'Maybe on Friday? Can you show...',
                      messageHour: '12:30',
                      hasOnlineFlag: true,
                      isMuted: true,
                      isWebPlatform: false,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'without online flag',
                  builder: (context) {
                    return const MessageCardWidget(
                      userImageUrl: null,
                      name: 'Amanda Buyns',
                      badgeNumber: '2',
                      number: '+(1) 345-123-5467',
                      messageContent: 'See you tomorrow. Ask them ab...',
                      messageHour: '11:29',
                      hasOnlineFlag: false,
                      isMuted: false,
                      isWebPlatform: false,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Message Card - Desktop',
                  builder: (context) {
                    return const MessageCardWidget(
                      userImageUrl: null,
                      name: 'Amanda Buyns',
                      badgeNumber: '2',
                      number: '+(1) 345-123-5467',
                      messageContent: 'See you tomorrow. Ask them ab...',
                      messageHour: '11:29',
                      hasOnlineFlag: false,
                      isMuted: false,
                      isWebPlatform: true,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Icon Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'selected',
                  builder: (context) {
                    return const IconButtonWidget(
                      icon: Icons.chat_outlined,
                      selected: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'unselected',
                  builder: (context) {
                    return const IconButtonWidget(
                      icon: Icons.insert_chart_outlined_rounded,
                      selected: false,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Bottom Navigator',
              useCases: [
                WidgetbookUseCase(
                  name: 'Bottom Navigator',
                  builder: (context) {
                    return const BottomNavigatorWidget();
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Profile Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'available',
                  builder: (context) {
                    return const ProfileButtonWidget(
                      icon: Icons.phone_in_talk_outlined,
                      isAvailable: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'unvailable',
                  builder: (context) {
                    return const ProfileButtonWidget(
                      icon: Icons.video_camera_front_rounded,
                      isAvailable: false,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Ability Card',
              useCases: [
                WidgetbookUseCase(
                  name: 'medium word',
                  builder: (context) {
                    return const AbilityCardWidget(
                      ability: 'Project Manager',
                      cardColor: AppColors.mediumPurple,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'large word',
                  builder: (context) {
                    return const AbilityCardWidget(
                      ability: 'Java Script Manager',
                      cardColor: AppColors.lightPink,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'small word',
                  builder: (context) {
                    return const AbilityCardWidget(
                      ability: 'QA',
                      cardColor: AppColors.darkGreen,
                    );
                  },
                ),
              ],
            ),

            WidgetbookComponent(
              name: 'AppBar',
              useCases: [
                WidgetbookUseCase(
                  name: 'AppBar',
                  builder: (context) {
                    return AppBarWidget(
                      name: 'Russel Hue',
                      userImageUrl: null,
                      isWebPlatform: true,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Message Bubble Details',
              useCases: [
                WidgetbookUseCase(
                  name: 'received',
                  builder: (context) {
                    return const MessageBubbleDetailsWidget(
                      userImageUrl: null,
                      name: 'Russel Hue',
                      hour: '13:32',
                      isMessageReceived: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'sended',
                  builder: (context) {
                    return const MessageBubbleDetailsWidget(
                      userImageUrl: null,
                      name: null,
                      hour: '13:52',
                      isMessageReceived: false,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Message Bubble',
              useCases: [
                WidgetbookUseCase(
                  name: 'received',
                  builder: (context) {
                    return const MessageBubbleWidget(
                      messageContent: 'How does it sound for you?',
                      isMessageReceived: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'sended',
                  builder: (context) {
                    return const MessageBubbleWidget(
                      messageContent: 'Yes, that sounds good!',
                      isMessageReceived: false,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'larger message',
                  builder: (context) {
                    return const MessageBubbleWidget(
                      messageContent:
                          'How does it sound for you? How does it sound for you?',
                      isMessageReceived: true,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Message Input Card',
              useCases: [
                WidgetbookUseCase(
                  name: 'Message Input Card - Desktop',
                  builder: (context) {
                    return const MessageInputWidget(
                      isWebPlatform: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Message Input Card - Mobile',
                  builder: (context) {
                    return const MessageInputWidget(
                      isWebPlatform: false,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
      devices: const [
        Samsung.s21ultra,
        Apple.iPhoneSE2020,
        Desktop.desktop1440p,
      ],
      appInfo: AppInfo(name: 'Chat and To-Do app'),
      themes: [
        WidgetbookTheme(
          name: 'Dark',
          data: CustomTheme.theme,
        ),
      ],
    );
  }
}
