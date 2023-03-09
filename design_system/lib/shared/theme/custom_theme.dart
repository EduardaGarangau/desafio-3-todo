import 'package:design_system/shared/theme/extensions/text_style_extension.dart';
import 'package:design_system/shared/theme/extensions/theme_colors_extension.dart';
import 'package:design_system/shared/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.darkGrey,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.black,
      iconTheme: const IconThemeData(
        color: AppColors.white,
      ),
      titleTextStyle: GoogleFonts.roboto(
        color: AppColors.white,
        fontSize: 14,
      ),
    ),
    extensions: <ThemeExtension<dynamic>>[
      ThemeColorsExtension(
        containerAndBottomNavColor: AppColors.almostBlack,
        greyTextAndIconColor: AppColors.grey,
        buttonColor: AppColors.transparent,
        buttonSelectedColor: AppColors.amber,
        blackTextAndIconColor: AppColors.black,
        badgeAndProfileBGColor: AppColors.purple,
        badgeNotSelectedColor: AppColors.mediumGrey,
        nameAndIconsWhiteColor: AppColors.white,
        profileButtonColor: AppColors.almostPurple,
        profileButtonUnvailableColor: AppColors.almostPurple.withOpacity(0.6),
        habilitiesColors: [
          AppColors.darkPurple,
          AppColors.mediumPurple,
          AppColors.darkGrey,
          AppColors.lightGreen,
          AppColors.mediumPurple,
        ],
        blackContainer: AppColors.black,
        sendedMessageContainerColor: AppColors.darkPink,
        greyColor: Colors.grey,
        onlineColor: Colors.green,
      ),
      TextStyleExtension(
        badgeTextStyle: GoogleFonts.roboto(
          fontSize: 10,
          color: AppColors.white,
        ),
        filterButtonTextStyle: GoogleFonts.roboto(
          fontSize: 12,
          color: AppColors.grey,
        ),
        messageAndTypesTextStyle: GoogleFonts.roboto(
          fontSize: 12,
          color: AppColors.grey,
        ),
        nameTextStyle: GoogleFonts.roboto(
          fontSize: 18,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
        numbersTextStyle: GoogleFonts.roboto(
          fontSize: 13,
          color: AppColors.grey,
        ),
        inputTextStyle: GoogleFonts.roboto(
          fontSize: 18,
          color: AppColors.grey,
        ),
        profileDetailsTextStyle: GoogleFonts.roboto(
          fontSize: 15,
          color: AppColors.grey,
        ),
        habilitiesAndTodoTitleStyle: GoogleFonts.roboto(
          fontSize: 15,
          color: AppColors.white,
        ),
      ),
    ],
  );
}
