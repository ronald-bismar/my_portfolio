import 'package:flutter/material.dart';
import 'package:my_portfolio/aspects/iphone.dart';
import 'package:my_portfolio/aspects/samsung.dart';

class CellPhoneUI extends StatefulWidget {
  const CellPhoneUI({super.key});

  @override
  CellphoneUIState createState() => CellphoneUIState();
}

class CellphoneUIState extends State<CellPhoneUI> {
  late AspectSamsung _aspectSamsung;
  late AspectIphone _aspectIphone;
  Color colorPhone = const Color.fromARGB(255, 41, 41, 41);
  bool isIphone = false;

  @override
  void initState() {
    super.initState();
    _aspectSamsung = AspectSamsung();
    _aspectIphone = AspectIphone();
  }

  @override
  Widget build(BuildContext context) {
    return firstLayerDark();
  }

  Widget firstLayerDark() {
    List<BoxShadow> outlineShadows = [
      BoxShadow(
        color: Colors.red.withOpacity(0.5),
        offset: const Offset(5, 5),
        blurRadius: 10,
      ),
      BoxShadow(
        color: Colors.blue.withOpacity(0.5),
        offset: const Offset(-5, -5),
        blurRadius: 10,
      ),
    ];

    // Usamos un `Center` para centrar el contenedor en la pantalla
    return GestureDetector(
      onTap: () => setState(() {
        isIphone = !isIphone;
      }),
      child: Center(
        child: AnimatedContainer(
          padding: EdgeInsets.all(isIphone ? 4 : 5),
          duration: const Duration(milliseconds: 300),
          width: isIphone ? 265 : 260,
          height: isIphone ? 535 : 550,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(isIphone ? 44 : 28),
            color: colorPhone,
            boxShadow: outlineShadows,
          ),
          child: isIphone
              ? _aspectIphone.secondLayerLight()
              : _aspectSamsung.secondLayerLight(),
        ),
      ),
    );
  }
}
