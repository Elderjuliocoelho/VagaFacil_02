import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter/material.dart';
import 'login_controller.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final FocusNode field1FocusNode = FocusNode();
    return Scaffold(
      backgroundColor: const Color(0xFF201A30),
      body: Center(
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 60),
                child: const Text(
                  'Vaga\nFácil',
                  style: TextStyle(
                      fontFamily: 'Gobold', color: Colors.white, fontSize: 45),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Usuario',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF38304C),
                      borderRadius:
                          BorderRadius.circular(15.0), // Borda arredondada
                    ),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(field1FocusNode);
                            },
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: Colors.white,
                              ),
                            ),
                            cursorColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Senha',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF38304C),
                      borderRadius:
                          BorderRadius.circular(15.0), // Borda arredondada
                    ),
                    child: Obx(
                      () => Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              controller: controller.passwordController,
                              focusNode: field1FocusNode,
                              textInputAction: TextInputAction.done,
                              obscureText: controller.showPassword.value,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                  color: Colors.white,
                                ),
                                suffixIcon: GestureDetector(
                                  child: Icon(
                                      controller.showPassword.value == false
                                          ? Icons.visibility_off_rounded
                                          : Icons.visibility_rounded,
                                      color: Colors.white),
                                  onTap: () {
                                    controller.toggleShowPassword();
                                  },
                                ),
                              ),
                              cursorColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offAllNamed('/menu');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0DD5E3),
                          minimumSize: const Size(170, 50),
                          fixedSize: const Size(170, 50),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'Gobold',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Não tem uma conta?',
                        style: TextStyle(color: Colors.white),
                      ),
                      InkWell(
                        onTap: () {
                          Get.offAllNamed('/cadastroUser1');
                        },
                        child: const Text(
                          '\tCadastre-se',
                          style: TextStyle(
                            color: Color(0xFF0DD5E3),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
