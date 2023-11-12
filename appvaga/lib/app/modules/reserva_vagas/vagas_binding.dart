import 'package:appvaga/app/modules/reserva_vagas/vagas_controller.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class VagasBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VagasController>(() => VagasController());
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
}