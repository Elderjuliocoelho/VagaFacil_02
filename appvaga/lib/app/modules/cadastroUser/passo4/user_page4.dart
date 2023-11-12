import 'package:appvaga/app/modules/cadastroUser/passo4/user_controller4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Userpage4 extends GetView<UserController4> {
  const Userpage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF201A30),
      appBar: AppBar(
        backgroundColor: const Color(0xFF38304C),
        //centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ),
              onTap: () {
                Get.offAllNamed('/cadastroUser3');
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                'Vaga\nFácil',
                style: TextStyle(
                    fontFamily: 'Gobold', color: Colors.white, fontSize: 45),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Usuario *',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFF38304C),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Form(
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white, fontSize: 17),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      cursorColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Senha *',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFF38304C),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Form(
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white, fontSize: 17),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      cursorColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    Text(
                      'Passo 4 de 5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height - 673), //523
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed('/cadastroUser5');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0DD5E3),
                      fixedSize: Size(MediaQuery.of(context).size.width, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      'Cadastrar',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
