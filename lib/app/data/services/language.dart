import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageService extends GetxService {
  static LanguageService get to => Get.find();

  final Rx<Locale> _locale = const Locale('pt', 'BR').obs;
  get getLocale => _locale.value;

  final RxString _selectedLanguage = "EN".obs;
  String get getSelectedLanguage => _selectedLanguage.value;

  void toggleLanguage() {
    if (getSelectedLanguage == "PT") {
      _selectedLanguage.value = "EN";
      Get.back();
      Get.updateLocale(const Locale('en', ''));
    } else {
      _selectedLanguage.value = "PT";
      Get.back();
      Get.updateLocale(const Locale('pt', 'BR'));
    }
  }
}
