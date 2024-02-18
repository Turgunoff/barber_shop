//
// @Author: "Eldor Turgunov"
// @Date: 17.02.2024
//

import 'package:get/get.dart';

class SignInController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;

  void setEmail(String value) {
    email.value = value;
  }

  void setPassword(String value) {
    password.value = value;
  }
}