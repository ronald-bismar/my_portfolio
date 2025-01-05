import 'package:flutter/material.dart';

class ScreenMainAndroid extends StatefulWidget {
  const ScreenMainAndroid({super.key});

  @override
  State<ScreenMainAndroid> createState() => _ScreenMainAndroidState();
}

class _ScreenMainAndroidState extends State<ScreenMainAndroid> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [toolBar(), mainScreen(), bottomNavigator()],
      ),
    );
  }

  Widget toolBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          hourOfPhone(),
          Row(
            children: statePhone(),
          ),
        ],
      ),
    );
  }

  Widget mainScreen() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        child: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Número de columnas
            mainAxisSpacing: 30.0, // Espacio vertical entre las grillas
            mainAxisExtent: 80, // Altura de cada celda
          ),
          itemCount: 10, // Número de elementos en la grilla
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: 40, // Ajusta la altura según sea necesario
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blueAccent,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Center(
                    child: Text(
                      'Item $index',
                      style: const TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget bottomNavigator() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Transform.rotate(
            angle: 4.705,
            child: Transform.scale(
              scaleY: 1.3,
              child: const Icon(Icons.menu, size: 17, color: Colors.white60),
            ),
          ),
          const Icon(Icons.crop_square_rounded,
              size: 17, color: Colors.white60),
          const Icon(Icons.arrow_back_ios, size: 17, color: Colors.white60),
        ],
      ),
    );
  }

  Widget hourOfPhone() {
    DateTime now = DateTime.now();
    String hour = now.hour.toString().padLeft(2, '0');
    String minutes = now.minute.toString().padLeft(2, '0');
    return Container(
      padding: const EdgeInsets.only(top: 2),
      child: Text(
        '$hour : $minutes',
        style: const TextStyle(
            fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white60),
      ),
    );
  }

  List<Widget> statePhone() {
    return [
      signal(),
      percentBattery(),
      battery(),
    ];
  }

  Widget battery() {
    return Transform.scale(
        scaleX: 1.4,
        child: const Icon(Icons.battery_4_bar_sharp,
            size: 10, color: Colors.white60));
  }

  Widget percentBattery() {
    return Container(
      padding: const EdgeInsets.only(top: 2, left: 2),
      child: const Text(
        '65%',
        style: TextStyle(
            fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white60),
      ),
    );
  }

  Widget signal() {
    return const Icon(Icons.signal_cellular_0_bar_rounded,
        size: 10, color: Colors.white60);
  }
}
