import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minesweeper/app/data/services/language.dart';

import 'app/core/theme/theme.dart';
import 'app/core/utils/locale_string.dart';
import 'app/routes/pages/pages.dart';

void main() async {
  runApp(GetMaterialApp(
    translations: LocaleString(),
    initialBinding: BindingsBuilder(() {
      Get.put(LanguageService());
    }),
    title: "Minesweeper",
    debugShowCheckedModeBanner: false,
    theme: themeData,
    locale: const Locale('en', 'US'),
    initialRoute: "/",
    getPages: Pages.routes,
  ));
}
