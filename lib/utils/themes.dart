import 'package:flutter/material.dart';
import 'constants.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppConstants.primaryColor,
      scaffoldBackgroundColor: AppConstants.backgroundColor,
      fontFamily: 'Space_Grotesk',
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: AppConstants.fontSizeLarge),
        bodyMedium: TextStyle(fontSize: AppConstants.fontSizeMedium),
        bodySmall: TextStyle(fontSize: AppConstants.fontSizeSmall),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppConstants.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: AppConstants.primaryColor,
      scaffoldBackgroundColor: AppConstants.backgroundColor,
      fontFamily: 'Space_Grotesk',
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: AppConstants.fontSizeLarge),
        bodyMedium: TextStyle(fontSize: AppConstants.fontSizeMedium),
        bodySmall: TextStyle(fontSize: AppConstants.fontSizeSmall),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppConstants.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}