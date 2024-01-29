// theme.dart
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'color_constants.dart';

class AppTheme {
  // Define your theme constants here, using the color constants
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    useMaterial3: false,
    // accentColor: AppColors.accentColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.primaryColor),
      color: Colors.transparent,
      // textTheme: const TextTheme(
      //   headline6: TextStyle(
      //     color: Colors.white,
      //     fontSize: 20.0,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: AppColors.textColor,
        fontSize: 18.0,
      ),
    ),
  );

  // dark theme
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    // accentColor: AppColors.accentColor,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: AppColors.primaryColor,
      // textTheme: const TextTheme(
      //   headline6: TextStyle(
      //     color: Colors.white,
      //     fontSize: 20.0,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
    ),
  );
}
