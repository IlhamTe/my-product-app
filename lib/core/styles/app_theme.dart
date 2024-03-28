import 'package:flutter/material.dart';
import 'package:my_product_app/core/styles/app_colors.dart';

class AppTheme {
  AppTheme._();

  /// Default Light Theme Configuration
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'WorkSans',
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w500,
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: AppColors.primaryColor,
      selectionHandleColor: AppColors.primaryColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
