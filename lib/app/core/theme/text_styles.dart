import 'package:flutter/material.dart';

import '../values/colors.dart';

class TextStyles {
  static TextStyle defaultStyle = const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Minesweeper',
    color: primaryColor,
  );

  static TextStyle bodyText = TextStyle(
    height: 1,
    fontSize: 11,
    fontWeight: FontWeight.normal,
    fontFamily: 'Minesweeper',
    color: primaryColor.withOpacity(0.8),
  );

  static TextStyle button = const TextStyle(
    fontSize: 13.5,
    fontWeight: FontWeight.normal,
    fontFamily: 'Minesweeper',
    color: primaryColor,
    height: 1.4,
  );
}
