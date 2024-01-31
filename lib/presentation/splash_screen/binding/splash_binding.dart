//
// @Author: "Eldor Turgunov"
// @Date: 30.01.2024
//

import 'package:barber_shop/presentation/navigation/controller/navigation_controller.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => NavigationController());
  }
}