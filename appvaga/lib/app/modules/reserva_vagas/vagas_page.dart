import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class VagasPage extends StatefulWidget {
  const VagasPage({super.key});

  @override
  State<VagasPage> createState() => _VagasPage();
}

class _VagasPage extends State<VagasPage> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF201A30),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: size.height * 0.28,
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                child: const Image(
                  image: AssetImage(
                    'assets/image/vagas.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF38304C),
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                //padding: const EdgeInsets.only(left: 2),
                child: TableCalendar(
                  locale: Localizations.localeOf(context).languageCode,
                  rowHeight: 35,
                  calendarStyle: CalendarStyle(
                    defaultDecoration:
                        const BoxDecoration(color: Color(0xFF38304C)),
                    weekendTextStyle:
                        const TextStyle(color: Colors.white, fontSize: 17),
                    defaultTextStyle:
                        const TextStyle(color: Colors.white, fontSize: 17),
                    todayDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    selectedDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border:
                          Border.all(width: 2, color: const Color(0xFF0DD5E3)),
                    ),
                  ),
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    leftChevronIcon:
                        Icon(Icons.chevron_left, color: Colors.white, size: 35),
                    rightChevronIcon: Icon(Icons.chevron_right,
                        color: Colors.white, size: 35),
                  ),
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  focusedDay: today,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  onDaySelected: _onDaySelected,
                  daysOfWeekStyle: DaysOfWeekStyle(
                      dowTextFormatter: (date, locale) =>
                          DateFormat('EEEE', locale)
                              .format(date)
                              .toUpperCase()[0],
                      weekendStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      weekdayStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HorarioBox(horario: '8:00', texto: 'Horario de Entrada'),
                  HorarioBox(horario: '15:00', texto: 'Horario de Saida'),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: size.height * 0.08,
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: size.width,
              child: ElevatedButton(
                onPressed: () {
                  //Get.offAllNamed('/cadastroUser3');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0DD5E3),
                  fixedSize: Size(MediaQuery.of(context).size.width, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Prosseguir',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              padding: const EdgeInsets.all(7.0),
              child: IconButton(
                onPressed: () {
                  Get.offAllNamed('/menu');
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 32,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HorarioBox extends StatelessWidget {
  final String horario;
  final String texto;

  const HorarioBox({super.key, required this.horario, required this.texto});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      width: size.width * 0.42, // Ajuste o tamanho conforme necessário
      height: 50.0, // Ajuste o tamanho conforme necessário
      decoration: BoxDecoration(
        color: const Color(0xFF38304C), // Cor de fundo da caixa
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            texto,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            horario,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )),
    );
  }
}