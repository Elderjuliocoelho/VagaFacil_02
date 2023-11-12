import 'package:appvaga/app/modules/menu/menu_controller.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class MenuBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuController>(() => MenuController());
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
}