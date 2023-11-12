import 'package:appvaga/app/modules/cadastroUser/passo5/user_controller5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Userpage5 extends GetView<UserController5> {
  const Userpage5({super.key});

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
            const SizedBox(
              height: 5,
            ),
            InkWell(
              child: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ),
              onTap: () {
                Get.offAllNamed('/login');
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
                  'Cidade que Frequenta',
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
                  'UF',
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
                      'Ultimo Passo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height - 673), //523
                Column(
                  children: [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offAllNamed('/login');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0DD5E3),
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text(
                          'Concluir',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                    const SizedBox(height: 9),
                    Center(
                      child: InkWell(
                        onTap: (){
                          Get.offAllNamed('/login');
                        },
                        child: const Text(
                          'Ignorar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
