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
    return Flexible(
      flex: 2,
      child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          color: Colors.red,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              hourOfPhone(),
              Expanded(child: Container()),
              ...statePhone()
            ],
          )),
    );
  }

  Widget mainScreen() {
    return Flexible(
      flex: 40,
      child: Container(
          width: double.infinity, color: Colors.green.withOpacity(0.5)),
    );
  }

  Widget bottomNavigator() {
    return Flexible(
      flex: 2,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          width: double.infinity,
          color: Colors.blue),
    );
  }

  hourOfPhone() {
    DateTime now = DateTime.now();
    String hour = now.hour.toString().padLeft(2, '0');
    String minutes = now.minute.toString().padLeft(2, '0');
    return Text(
      '$hour : $minutes',
      style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
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
    return const Icon(Icons.battery_4_bar_sharp, size: 11);
  }

  Widget percentBattery() {
    return const Text(
      '65%',
      style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
    );
  }

  signal() {
    return const Icon(Icons.signal_cellular_0_bar_rounded, size: 11);
  }
}
