//
// @Author: "Eldor Turgunov"
// @Date: 30.01.2024
//

import 'dart:ui';

import 'package:get/get.dart';

class ProfileController extends GetxController {
  var selectedLanguage = 'en_US'.obs;

  void changeLanguage(String languageCode) {
    selectedLanguage(languageCode);
    Get.updateLocale(Locale(languageCode.split('_')[0], languageCode.split('_')[1]));
    Get.back();
  }
}