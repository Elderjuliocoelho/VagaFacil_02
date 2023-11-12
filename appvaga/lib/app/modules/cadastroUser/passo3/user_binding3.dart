import 'package:appvaga/app/modules/cadastroUser/passo3/user_controller3.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class UserBinding3 implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController3>(() => UserController3());
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
}