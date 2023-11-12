import 'package:appvaga/app/modules/cadastroUser/passo5/user_controller5.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class UserBinding5 implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController5>(() => UserController5());
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
}