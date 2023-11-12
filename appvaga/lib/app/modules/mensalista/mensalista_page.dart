import 'package:appvaga/app/modules/mensalista/mensalista_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MensalistaPage extends GetView<MensalistaController> {
  const MensalistaPage({super.key});

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
              child: Center(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Vaga Facil Mensal',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Visualizar no mapa',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Container(
                      margin: const EdgeInsets.only(right: 50),
                      padding: const EdgeInsets.only(left: 7),
                      decoration: BoxDecoration(
                        color: const Color(0xFF38304C),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Form(
                        child: TextFormField(
                          style: const TextStyle(
                              color: Colors.white, fontSize: 17),
                          decoration: const InputDecoration(
                            enabled: false,
                            border: InputBorder.none,
                            hintText: 'Minha posição atual',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                          cursorColor: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SliderDistancia()
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

class SliderDistancia extends StatefulWidget {
  const SliderDistancia({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SliderDistancia createState() => _SliderDistancia();
}

class _SliderDistancia extends State<SliderDistancia> {
  double _currentValue = 5.0;

  @override
  Widget build(BuildContext context) {
    String formattedValue = _currentValue.toStringAsFixed(1);
    var size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Distância:',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbColor: const Color(0xFF0DD5E3), // Altera a cor da bolinha
            activeTrackColor: Colors.white, // Altera a cor da faixa preenchida
            inactiveTrackColor:
                Colors.grey, // Altera a cor da faixa não preenchida
          ),
          child: SizedBox(
            width: size.width*0.45,
            child: Slider(
              value: _currentValue,
              min: 1.0, // Valor mínimo da distância
              max: 50.0, // Valor máximo da distância
              onChanged: (value) {
                setState(
                  () {
                    _currentValue = value;
                  },
                );
              },
            ),
          ),
        ),
        Text(
          '$formattedValue Km',
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }
}
