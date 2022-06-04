import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/core/theme/theme.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Minesweeper",
    debugShowCheckedModeBanner: false,
    theme: themeData,
    // initialRoute: ,
    // getPages: [],
    // initialBinding: ,
  ));
}
