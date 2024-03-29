import 'package:design_system/shared/theme/extensions/text_style_extension.dart';
import 'package:design_system/shared/theme/extensions/theme_colors_extension.dart';
import 'package:design_system/shared/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.darkGrey,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.black,
      iconTheme: IconThemeData(
        color: AppColors.white,
      ),
      titleTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 14,
      ),
    ),
    extensions: <ThemeExtension<dynamic>>[
      ThemeColorsExtension(
        chatBackgroundWeb: AppColors.mediumBlack,
        messageChatWebColor: AppColors.mediumBlack,
        appBarButtonWeb: AppColors.amber,
        appBarWebColor: AppColors.darkGrey,
        chatAppBarColor: AppColors.black,
        appBarButtonColor: AppColors.grey,
        webBackgroundColor: AppColors.black,
        searchCardColor: AppColors.almostBlack,
        sendMessageCardColor: AppColors.almostBlack,
        bottomNavigatorColor: AppColors.almostBlack,
        onlineColor: AppColors.green,
        profileBGColor: AppColors.purple,
        marginTaskColor: AppColors.amber,
        filtersWebBackgroundColor: AppColors.black,
        sendMessageButtonColor: AppColors.amber,
        taskUndoneBGColor: AppColors.almostBlack,
        taskDoneBGColor: AppColors.black,
        taskButtonUndoneColor: AppColors.almostBlack,
        taskButtonDoneColor: AppColors.amber,
        filterButtonSelectedColor: AppColors.amber,
        filterButtonUnselectedColor: AppColors.transparent,
        badgeSelectedColor: AppColors.purple,
        badgeUnselectedColor: AppColors.mediumGrey,
        bottomNavButtonSelectedColor: AppColors.amber,
        bottomNavButtonUnselectedColor: AppColors.transparent,
        profileButtonAvailableColor: AppColors.mediumPurple,
        profileButtonUnvailableColor: AppColors.almostPurple.withOpacity(0.6),
        messageBubbleReceivedColor: AppColors.almostBlack,
        messageBubbleSendedColor: AppColors.darkPink,
        blackTextColor: AppColors.black,
        greyTextColor: AppColors.grey,
        whiteTextColor: AppColors.white,
        yellowTextColor: AppColors.amber,
        whiteIconsColor: AppColors.white,
        blackIconsColor: AppColors.black,
        greyIconsColor: AppColors.grey,
        abilitiesColors: [
          AppColors.mediumPurple,
          AppColors.darkPurple,
          AppColors.darkGrey,
          AppColors.lightGreen,
          AppColors.lightPink,
        ],
        errorColor: AppColors.errorColor,
      ),
      TextStyleExtension(
        searchCardTextStyle: const TextStyle(
          fontSize: 18,
          color: AppColors.grey,
        ),
        badgeTextStyle: const TextStyle(
          fontSize: 13,
          color: AppColors.white,
        ),
        filterSectionTextStyle: const TextStyle(
          fontSize: 17,
          color: AppColors.grey,
        ),
        userNameTextStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
        phoneNumberTextStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.grey,
        ),
        hourTextStyle: const TextStyle(
          fontSize: 13,
          color: AppColors.grey,
        ),
        userBioTextStyle: const TextStyle(
          fontSize: 15,
          color: AppColors.grey,
        ),
        abilityTextStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.white,
        ),
        taskTitleStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.white,
          letterSpacing: 0.3,
        ),
        taskDateStyle: const TextStyle(
          fontSize: 15,
          color: AppColors.grey,
        ),
        userNameChatPageTextStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.white,
        ),
        appBarButtonTextTextStyle: const TextStyle(
          fontSize: 12,
          color: AppColors.white,
        ),
        messageContentTextStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.grey,
        ),
        filterButtonSelectedTextStyle: const TextStyle(
          fontSize: 17,
          color: AppColors.black,
        ),
        filterButtonUnselectedTextStyle: const TextStyle(
          fontSize: 17,
          color: AppColors.grey,
        ),
        userNameProfile: const TextStyle(
          fontSize: 16,
          color: AppColors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    ],
  );

  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.mediumWhite,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.lightGrey,
      iconTheme: IconThemeData(
        color: AppColors.black,
      ),
      titleTextStyle: TextStyle(
        color: AppColors.black,
        fontSize: 14,
      ),
    ),
    extensions: <ThemeExtension<dynamic>>[
      ThemeColorsExtension(
        filtersWebBackgroundColor: AppColors.lightBlue,
        chatBackgroundWeb: AppColors.white,
        messageChatWebColor: AppColors.mediumWhite,
        appBarButtonWeb: AppColors.blue,
        appBarWebColor: AppColors.lightBlue,
        chatAppBarColor: AppColors.lightGrey,
        appBarButtonColor: AppColors.blue,
        webBackgroundColor: AppColors.mediumWhite,
        searchCardColor: AppColors.lightGrey,
        sendMessageCardColor: AppColors.lightGrey,
        bottomNavigatorColor: AppColors.lightGrey,
        onlineColor: AppColors.green,
        profileBGColor: AppColors.blue,
        marginTaskColor: AppColors.darkBlue,
        sendMessageButtonColor: AppColors.blue,
        taskUndoneBGColor: AppColors.lightGrey,
        taskDoneBGColor: AppColors.lightBlue,
        taskButtonUndoneColor: AppColors.lightGrey,
        taskButtonDoneColor: AppColors.darkBlue,
        filterButtonSelectedColor: AppColors.blue,
        filterButtonUnselectedColor: AppColors.transparent,
        badgeSelectedColor: AppColors.blue,
        badgeUnselectedColor: AppColors.grey,
        bottomNavButtonSelectedColor: AppColors.blue,
        bottomNavButtonUnselectedColor: AppColors.transparent,
        profileButtonAvailableColor: AppColors.darkBlue,
        profileButtonUnvailableColor: AppColors.darkBlue.withOpacity(0.2),
        messageBubbleReceivedColor: AppColors.lightGrey,
        messageBubbleSendedColor: AppColors.lightBlue,
        blackTextColor: AppColors.white,
        greyTextColor: AppColors.grey,
        whiteTextColor: AppColors.black,
        yellowTextColor: AppColors.amber,
        whiteIconsColor: AppColors.black,
        blackIconsColor: AppColors.black,
        greyIconsColor: AppColors.grey,
        abilitiesColors: [
          AppColors.mediumPurple,
          AppColors.darkPurple,
          AppColors.darkGrey,
          AppColors.lightGreen,
          AppColors.lightPink,
        ],
        errorColor: AppColors.errorColor,
      ),
      TextStyleExtension(
        searchCardTextStyle: const TextStyle(
          fontSize: 18,
          color: AppColors.grey,
        ),
        badgeTextStyle: const TextStyle(
          fontSize: 13,
          color: AppColors.mediumWhite,
        ),
        filterSectionTextStyle: const TextStyle(
          fontSize: 17,
          color: AppColors.black,
        ),
        userNameTextStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
        phoneNumberTextStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.grey,
        ),
        hourTextStyle: const TextStyle(
          fontSize: 13,
          color: AppColors.grey,
        ),
        userBioTextStyle: const TextStyle(
          fontSize: 15,
          color: AppColors.grey,
        ),
        abilityTextStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.white,
        ),
        taskTitleStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.black,
          letterSpacing: 0.3,
        ),
        taskDateStyle: const TextStyle(
          fontSize: 15,
          color: AppColors.grey,
        ),
        userNameChatPageTextStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.black,
        ),
        appBarButtonTextTextStyle: const TextStyle(
          fontSize: 12,
          color: AppColors.black,
        ),
        messageContentTextStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.grey,
        ),
        filterButtonSelectedTextStyle: const TextStyle(
          fontSize: 17,
          color: AppColors.black,
        ),
        filterButtonUnselectedTextStyle: const TextStyle(
          fontSize: 17,
          color: AppColors.grey,
        ),
        userNameProfile: const TextStyle(
          fontSize: 16,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    ],
  );
}
