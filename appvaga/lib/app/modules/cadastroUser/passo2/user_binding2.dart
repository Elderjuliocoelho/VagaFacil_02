import 'package:appvaga/app/modules/cadastroUser/passo2/user_controller2.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class UserBinding2 implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController2>(() => UserController2());
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
}