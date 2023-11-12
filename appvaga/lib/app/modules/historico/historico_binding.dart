import 'package:appvaga/app/modules/historico/historico_controller.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HistoricoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistoricoController>(() => HistoricoController());
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
}