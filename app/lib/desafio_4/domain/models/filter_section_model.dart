// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/desafio_4/domain/models/messages_card_model.dart';

class FilterSectionModel {
  final String title;
  final List<MessageCardModel> messages;

  FilterSectionModel({
    required this.title,
    required this.messages,
  });
}
