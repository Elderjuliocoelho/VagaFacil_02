import 'package:appvaga/app/modules/mensalista/mensalista_controller.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class MensalistaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MensalistaController>(() => MensalistaController());
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
}