import 'package:app_test_vacancy/const/const.dart';
import 'package:flutter/material.dart';

final kThemeLight = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: kColorScaffoldBGLight,
  primaryTextTheme: TextTheme(
    bodyLarge: TextStyle(
      color: kColorTextBodyPrimaryLight,
      // fontFamily: 'SF-Pro-Display',
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      color: kColorTextBodyPrimaryLight,
      // fontFamily: 'SF-Pro-Display',
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      color: kColorTextBodyPrimaryLight,
      // fontFamily: 'SF-Pro-Display',
      fontWeight: FontWeight.w500,
    ),
  ),
  appBarTheme: const AppBarTheme(
    color: kColorAppBarBGlight,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: kColorTextTitleLight,
      fontSize: 18,
      fontFamily: kFontFamilyDefault,
      fontWeight: FontWeight.w500,
    ),
  ),
  cardTheme: const CardTheme(
    color: kColorCardBGlight,
  ),
);
