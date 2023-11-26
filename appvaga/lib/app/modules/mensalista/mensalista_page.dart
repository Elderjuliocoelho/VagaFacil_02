import 'package:appvaga/app/modules/mensalista/mensalista_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MensalistaPage extends GetView<MensalistaController> {
  const MensalistaPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<bool> _selections = [true, false];
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
              onTap: () {
                Get.offAllNamed('/menu');
              },
              tileColor: const Color.fromARGB(0, 255, 115, 95),
              iconColor: Colors.white,
              leading: const Icon(Icons.directions_car_rounded, size: 40),
              title: const Text('Voltar',
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
                    const SliderDistancia(),
                    const SizedBox(height: 30),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BotaoAlternar(),
                      ],
                    ),
                    const SizedBox(height: 35),
                    const Row(
                      children: [
                        Text(
                          'Nenhuma garagem encontrada\npara este endereço',
                          style: TextStyle(color: Colors.white, fontSize: 18),
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
            width: size.width * 0.45,
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

class BotaoAlternar extends StatefulWidget {
  const BotaoAlternar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ColorChangingButtonState createState() => _ColorChangingButtonState();
}

class _ColorChangingButtonState extends State<BotaoAlternar> {
  int _botaoSelected = 1; //1 para o priemiro, 2 para o segundo

  void _toggleSeleciona(int buttonIndex) {
    setState(() {
      _botaoSelected = buttonIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MudarCorBotao(
          texto: 'Menor Valor',
          isSelected: _botaoSelected == 1,
          onSelect: () {
            _toggleSeleciona(1);
          },
        ),
        MudarCorBotao(
          texto: 'Menor Distância',
          isSelected: _botaoSelected == 2,
          onSelect: () {
            _toggleSeleciona(2);
          },
        ),
      ],
    );
  }
}

class MudarCorBotao extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onSelect;
  final String texto;

  const MudarCorBotao({
    super.key,
    required this.isSelected,
    required this.onSelect,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 38,
      width: size.width * 0.42,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: InkWell(
        onTap: onSelect,
        child: Container(
          decoration: BoxDecoration(
            color:
                isSelected ? const Color(0xFF0DD5E3) : const Color(0xFF201A30),
            borderRadius: BorderRadius.circular(0),
            border: Border.all(
              color: const Color(0xFF0DD5E3), // Cor da borda
              width: 1, // Tamanho da borda (10 pixels)
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            texto,
            style: TextStyle(
              color: isSelected ? const Color(0xFF201A30) : const Color(0xFF0DD5E3),
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
