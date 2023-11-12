import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {

  var showPassword = true.obs;
  var passwordController = TextEditingController();

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }

}
