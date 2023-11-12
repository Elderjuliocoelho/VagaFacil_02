import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  var showPassword = true.obs;
  var passwordController = TextEditingController();

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
  }

}
