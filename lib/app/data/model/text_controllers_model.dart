import 'package:flutter/material.dart';

import '../../core/values/constants.dart';

class TextControllers {
  final TextEditingController textBombs =
      TextEditingController(text: Constants.initialBombsAmount.toString());
  final TextEditingController textWidth =
      TextEditingController(text: Constants.initialMinesweeperWidth.toString());
  final TextEditingController textHeight = TextEditingController(
      text: Constants.initialMinesweeperHeight.toString());

  TextControllers();
}
