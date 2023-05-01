import 'package:app/desafio_4/domain/DTOs/message_dto.dart';
import 'package:app/desafio_4/infra/repositories/chat_repository_impl.dart';
import 'package:app/desafio_4/presenter/stores/chat_store.dart';
import 'package:app/desafio_4/presenter/stores/user_store.dart';
import 'package:design_system/shared/theme/extensions/text_style_extension.dart';
import 'package:design_system/shared/theme/extensions/theme_colors_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MessageTextFieldWidget extends StatelessWidget {
  const MessageTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _controller = TextEditingController();
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyles = Theme.of(context).extension<TextStyleExtension>()!;
    final userStore = Modular.get<UserStore>();
    final repo = Modular.get<ChatRepositoryImpl>();
    final currentUser = userStore.currentUser;

    OutlineInputBorder _textFieldBorder() {
      return OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: themeColors.sendMessageCardColor,
        ),
      );
    }

    void _submitMessage() {
      if (_controller.text.isEmpty) {
        return;
      }

      final message = MessageDTO(
        userId: currentUser.userId,
        userName: currentUser.name,
        userImage: currentUser.imageUrl,
        text: _controller.text,
        sendedAt: DateTime.now(),
      );

      repo.createMessage(message);
      _controller.text = '';
    }

    return Row(
      children: [
        Container(
          width: size.width * 0.8,
          height: 80,
          padding: const EdgeInsets.only(
            top: 12,
            left: 10,
            right: 10,
          ),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              fillColor: themeColors.sendMessageCardColor,
              filled: true,
              hintText: 'Digit your message...',
              hintStyle: TextStyle(
                color: themeColors.greyTextColor,
              ),
              enabledBorder: _textFieldBorder(),
              border: _textFieldBorder(),
              focusedBorder: _textFieldBorder(),
            ),
          ),
        ),
        InkWell(
          onTap: _submitMessage,
          child: Container(
            height: 45,
            width: size.width * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: themeColors.bottomNavButtonSelectedColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.send,
                  size: 20,
                  color: themeColors.blackIconsColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}