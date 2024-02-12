//
// @Author: "Eldor Turgunov"
// @Date: 30.01.2024
//

import 'package:get/get.dart';

import 'en_us/en_us.dart';
import 'kz_kz/kz_kz.dart';
import 'ru_ru/ru_ru.dart';
import 'uz_uz/uz_uz.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'ru_RU': ruRU,
        'uz_UZ': uzUZ,
        'kz_KZ': kzKZ,
      };
}
