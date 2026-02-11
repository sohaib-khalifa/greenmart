import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_fonts.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';

class AppThemes {
  static ThemeData get light => ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.accentColor,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    fontFamily: AppFonts.poppins,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.blackColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.blackColor),
    ),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.backgroundColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.greyColor,
      selectedLabelStyle: TextStyles.small.copyWith(
        fontWeight: FontWeight.w500,
        height: 1.8,
      ),
      unselectedLabelStyle: TextStyles.small.copyWith(
        fontWeight: FontWeight.w500,
        height: 1.8,
      ),
    ),
  );
}
