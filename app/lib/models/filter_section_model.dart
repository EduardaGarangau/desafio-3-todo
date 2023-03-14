// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:design_system/design_system.dart';

class FilterSectionModel {
  final String title;
  final List<MessageCardWidget> messages;

  FilterSectionModel({
    required this.title,
    required this.messages,
  });
}
