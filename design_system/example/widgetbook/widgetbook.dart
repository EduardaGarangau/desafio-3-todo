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
              name: 'Widgets',
              useCases: [
                WidgetbookUseCase(
                  name: 'Search Message Card',
                  builder: (context) {
                    return const SearchMessageWidget();
                  },
                ),
                WidgetbookUseCase(
                  name: 'Badge',
                  builder: (context) {
                    return const BadgeWidget(
                      number: '35',
                      radius: 9,
                      selected: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'FilterButton Selected',
                  builder: (context) {
                    return const ButtonWidget(
                      text: 'All',
                      icon: Icons.chat_outlined,
                      badgeNumber: '35',
                      selected: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'FilterButton Not Selected',
                  builder: (context) {
                    return const ButtonWidget(
                      text: 'All',
                      icon: Icons.chat_outlined,
                      badgeNumber: '35',
                      selected: false,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Navigator IconButton Selected',
                  builder: (context) {
                    return const ButtonWidget(
                      text: null,
                      icon: Icons.chat_outlined,
                      badgeNumber: null,
                      selected: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Navigator IconButton Not Selected',
                  builder: (context) {
                    return const ButtonWidget(
                      text: null,
                      icon: Icons.chat_outlined,
                      badgeNumber: null,
                      selected: false,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'User Image With Badge',
                  builder: (context) {
                    return const UserImageWidget(
                      userImageUrl: null,
                      radiusSize: 22,
                      badgeNumber: '2',
                      hasBadge: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'User Image Without Bage',
                  builder: (context) {
                    return const UserImageWidget(
                      userImageUrl: null,
                      radiusSize: 30,
                      badgeNumber: '2',
                      hasBadge: false,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Expand Filter',
                  builder: (context) {
                    return const ExpandFilterWidget(title: 'Unread');
                  },
                ),
                WidgetbookUseCase(
                  name: 'Online Flag',
                  builder: (context) {
                    return const OnlineFlagWidget();
                  },
                ),
                WidgetbookUseCase(
                  name: 'Bottom Navigator',
                  builder: (context) {
                    return const BottomNavigatorWidget();
                  },
                ),
                WidgetbookUseCase(
                  name: 'Available Profile Button',
                  builder: (context) {
                    return const ProfileButtonWidget(
                      icon: Icons.phone_in_talk_outlined,
                      isAvailable: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Unvailable Profile Button',
                  builder: (context) {
                    return const ProfileButtonWidget(
                      icon: Icons.videocam_outlined,
                      isAvailable: false,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'User name with online flag',
                  builder: (context) {
                    return const UserNameWidget(
                      name: 'John Tornton',
                      hasOnlineFlag: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'User name without online flag',
                  builder: (context) {
                    return const UserNameWidget(
                      name: 'John Tornton',
                      hasOnlineFlag: false,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Message Card',
                  builder: (context) {
                    return const MessageCardWidget(
                      userImageUrl: null,
                      name: 'John Tornton',
                      badgeNumber: '5',
                      number: '+(1) 345-123-5467',
                      messageContent: 'Maybe on Friday? Can you show...',
                      messageHour: '12:30',
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Hability Card',
                  builder: (context) {
                    return const HabilityCardWidget(
                      hability: 'Project Manager',
                      cardColor: Colors.greenAccent,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Message Bubble Received',
                  builder: (context) {
                    return const MessageBubbleWidget(
                      isMessageReceived: true,
                      messageContent:
                          'How does it sound for you? Yes, that sounds good! Yes, that sounds good!',
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Message Bubble Sended',
                  builder: (context) {
                    return const MessageBubbleWidget(
                      isMessageReceived: false,
                      messageContent: 'Yes, that sounds good!',
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Message Bubble Details Received',
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
                  name: 'Message Bubble Details Sended',
                  builder: (context) {
                    return const MessageBubbleDetailsWidget(
                      userImageUrl: null,
                      name: null,
                      hour: '13:53',
                      isMessageReceived: false,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'App Bar Widget',
                  builder: (context) {
                    return const AppBarWidget(
                      name: 'Russel Hue',
                      userImageUrl: null,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Message Input',
                  builder: (context) {
                    return const MessageInputWidget();
                  },
                ),
              ],
            ),
          ],
        ),
      ],
      appInfo: AppInfo(name: 'todo'),
      themes: [
        WidgetbookTheme(
          name: 'Dark',
          data: CustomTheme.theme,
        ),
      ],
    );
  }
}
