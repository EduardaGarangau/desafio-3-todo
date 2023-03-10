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
                  name: 'Search Message Card',
                  builder: (context) {
                    return const SearchMessageWidget();
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
            WidgetbookComponent(
              name: 'Filter Sections',
              useCases: [
                WidgetbookUseCase(
                  name: 'Filter Section',
                  builder: (context) {
                    return const FilterSectionWidget(
                      title: 'Unread',
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'User Image',
              useCases: [
                WidgetbookUseCase(
                  name: 'User Image with Badge',
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
                  name: 'User Image without Badge',
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
                  name: 'Message Card with online flag',
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
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Message Card without online flag',
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
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Icon Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'Icon Button selected',
                  builder: (context) {
                    return const IconButtonWidget(
                      icon: Icons.chat_outlined,
                      selected: true,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Icon Button unselected',
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
          ],
        ),
      ],
      devices: const [
        Apple.iPhone13,
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
