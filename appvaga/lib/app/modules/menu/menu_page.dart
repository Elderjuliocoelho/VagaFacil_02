import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends GetView<MenuController> {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'VAGA FÁCIL',
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontFamily: 'Gobold'),
        ),
        backgroundColor: const Color(0xFF38304C),
        iconTheme: const IconThemeData(color: Colors.white, size: 40),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF38304C),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {},
              tileColor: const Color.fromARGB(0, 255, 115, 95),
              iconColor: Colors.white,
              leading: const Icon(Icons.directions_car_rounded, size: 40),
              title: const Text(' ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  )),
            ),
            const Divider(
              thickness: 2,
              color: Colors.white,
            ),
            ListTile(
              onTap: () {},
              tileColor: const Color.fromARGB(0, 255, 115, 95),
              iconColor: Colors.white,
              leading: const Icon(Icons.directions_car_rounded, size: 40),
              title: const Text(' ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  )),
            ),
            const Divider(
              thickness: 2,
              color: Colors.white,
            ),
            ListTile(
              onTap: () {},
              tileColor: const Color.fromARGB(0, 255, 115, 95),
              iconColor: Colors.white,
              leading: const Icon(Icons.directions_car_rounded, size: 40),
              title: const Text(' ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  )),
            ),
            const Divider(
              thickness: 2,
              color: Colors.white,
            ),
            ListTile(
              onTap: () {},
              tileColor: const Color.fromARGB(0, 255, 115, 95),
              iconColor: Colors.white,
              leading: const Icon(Icons.directions_car_rounded, size: 40),
              title: const Text(' ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  )),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF201A30),
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: const Center(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Olá,',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Text(
                        ' Cliente!',
                        style:
                            TextStyle(color: Color(0xFF0DD5E3), fontSize: 25),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Escolha um serviço Vaga Fácil',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              padding: const EdgeInsets.only(left: 5),
              child: Stack(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.directions_car_filled_outlined,
                              size: 100, color: Color(0xFF38304C)),
                          SizedBox(width: 20),
                          Icon(Icons.edit_document,
                              size: 100, color: Color(0xFF38304C)),
                        ],
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.monetization_on_outlined,
                              size: 100, color: Color(0xFF38304C)),
                          SizedBox(width: 20),
                          Icon(Icons.calendar_month,
                              size: 100, color: Color(0xFF38304C)),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: const Color(0xFF0DD5E3),
                                width: 3,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 8.0, left: 8.0, top: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  Get.offAllNamed('/vagas');
                                },
                                child: const Text(
                                  'Reserva de Vagas',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              Get.offAllNamed('/historico');
                            },
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: const Color(0xFF0DD5E3),
                                  width: 3,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    right: 8.0, left: 8.0, top: 20.0),
                                child: Text(
                                  'Historico',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: const Color(0xFF0DD5E3),
                                width: 3,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  right: 8.0, left: 8.0, top: 20.0),
                              child: Text(
                                'Adicionar\nValores',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: const Color(0xFF0DD5E3),
                                  width: 3,
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Get.offAllNamed('/mensalista');
                                },
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      right: 8.0, left: 8.0, top: 20.0),
                                  child: Text(
                                    'Mensalista',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
