import 'package:flutter/material.dart';
import 'package:minesweeper/app/core/values/colors.dart';

final ThemeData themeData = ThemeData(
  primaryColor: primaryColor,
  fontFamily: "Minesweeper",
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    headline1: const TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Minesweeper',
      color: primaryColor,
    ),
    headline2: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Minesweeper',
      color: primaryColor,
    ),
    headline3: const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Minesweeper',
      color: primaryColor,
    ),
    headline4: const TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Minesweeper',
      color: primaryColor,
    ),
    headline5: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Minesweeper',
      color: primaryColor,
    ),
    headline6: const TextStyle(
      fontSize: 13.5,
      fontWeight: FontWeight.normal,
      fontFamily: 'Minesweeper',
      color: primaryColor,
      height: 1.4,
    ),
    subtitle1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Minesweeper',
      color: primaryColor.withOpacity(0.8),
    ),
    subtitle2: TextStyle(
      fontSize: 14.5,
      fontWeight: FontWeight.bold,
      fontFamily: 'Minesweeper',
      color: primaryColor.withOpacity(0.8),
    ),
    bodyText1: TextStyle(
      height: 1.4,
      fontSize: 16.5,
      fontWeight: FontWeight.normal,
      fontFamily: 'Minesweeper',
      color: Colors.grey[900],
    ),
    bodyText2: TextStyle(
      height: 1,
      fontSize: 11,
      fontWeight: FontWeight.normal,
      fontFamily: 'Minesweeper',
      color: primaryColor.withOpacity(0.8),
    ),
  ),
);
