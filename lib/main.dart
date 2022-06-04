import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

import 'app/core/theme/theme.dart';
import 'app/routes/pages/pages.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Minesweeper",
    debugShowCheckedModeBanner: false,
    theme: themeData,
    initialRoute: "/",
    getPages: Pages.routes,
    supportedLocales: const [
      Locale('en', ''),
      Locale('pt', 'BR'),
    ],
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    defaultTransition: Transition.fadeIn,
  ));
}
