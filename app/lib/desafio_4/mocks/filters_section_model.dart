import 'package:app/desafio_4/domain/models/filter_section_model.dart';
import 'package:app/desafio_4/domain/models/messages_card_model.dart';

class FiltersSectionMock {
  static List<FilterSectionModel> filtersSection = [
    FilterSectionModel(
      title: 'Unread',
      messages: [
        MessageCardModel(
          userImageUrl: 'lib/assets/images/john_tornton.jpg',
          name: 'John Tornton',
          badgeNumber: '5',
          number: '+(1) 345-123-5467',
          messageContent: 'Maybe on Friday? Can you show...',
          messageHour: '12:30',
          hasOnlineFlag: true,
          isMuted: false,
        ),
        MessageCardModel(
          userImageUrl: 'lib/assets/images/amanda_buyns.jpg',
          name: 'Amanda Buyns',
          number: '+(1) 345-123-5467',
          messageContent: 'See you tomorrow. Ask them ab...',
          badgeNumber: '2',
          messageHour: '11:29',
          hasOnlineFlag: false,
          isMuted: false,
        ),
        MessageCardModel(
          userImageUrl: 'lib/assets/images/russel_hue.jpg',
          name: 'Russel Hue',
          number: '+(1) 345-123-5467',
          messageContent: 'Good! Send you their visual',
          badgeNumber: '2',
          messageHour: '10:30',
          hasOnlineFlag: true,
          isMuted: false,
        ),
      ],
    ),
    FilterSectionModel(
      title: 'From team',
      messages: [
        MessageCardModel(
          userImageUrl: 'lib/assets/images/john_newman.jpg',
          name: 'John Newman',
          number: '+(1) 345-123-5467',
          messageContent: 'Maybe on Friday? Can you show...',
          badgeNumber: '1',
          messageHour: '12:30',
          hasOnlineFlag: true,
          isMuted: false,
        ),
      ],
    ),
    FilterSectionModel(
      title: 'From companies',
      messages: [
        MessageCardModel(
          userImageUrl: 'lib/assets/images/john_newman.jpg',
          name: 'John Newman',
          number: '+(1) 345-123-5467',
          messageContent: 'Maybe on Friday? Can you show...',
          badgeNumber: '1',
          messageHour: '12:30',
          hasOnlineFlag: true,
          isMuted: false,
        ),
      ],
    ),
  ];
}
