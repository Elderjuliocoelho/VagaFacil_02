import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoricoPage extends GetView<MenuController> {
  const HistoricoPage({super.key});

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
                          'Histórico',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
