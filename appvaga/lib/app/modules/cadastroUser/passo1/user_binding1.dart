import 'package:appvaga/app/modules/cadastroUser/passo1/user_controller1.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class UserBinding1 implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController1>(() => UserController1());
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
}