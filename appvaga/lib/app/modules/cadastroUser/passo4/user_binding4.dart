import 'package:appvaga/app/modules/cadastroUser/passo4/user_controller4.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class UserBinding4 implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController4>(() => UserController4());
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
}