import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class CellPhoneUI extends StatefulWidget {
  const CellPhoneUI({super.key});

  @override
  _CellphoneUIState createState() => _CellphoneUIState();
}

class _CellphoneUIState extends State<CellPhoneUI> {
  Color colorPhone = const Color.fromARGB(255, 41, 41, 41);
  bool isSelected = false;

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
        isSelected = !isSelected;
      }),
      child: Center(
        child: AnimatedContainer(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          duration: const Duration(milliseconds: 300),
          width: isSelected
              ? 400
              : 260, // Ancho fijo (ajusta según el tamaño real del móvil que quieras imitar)
          height:
              560, // Alto fijo (ajusta según el tamaño real del móvil que quieras imitar)
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: colorPhone,
            boxShadow: outlineShadows,
          ),
          child: secondLayerLight(),
        ),
      ),
    );
  }

  Widget secondLayerLight() {
    Color colorSombra = Colors.white;
    List<BoxShadow> shadowsSecondLayer = [
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
      BoxShadow(
        color: colorSombra,
        blurRadius: 2,
      ),
    ];

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: double.infinity, // Un poco más pequeña que la primera capa
      height: double.infinity, // Un poco más baja que la primera capa
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: colorSombra,
          boxShadow: shadowsSecondLayer),
      child: thirdLayerLight(),
    );
  }

  Widget thirdLayerLight() {
    List<BoxShadow> shadowsSecondLayer = [
      BoxShadow(
        color: colorPhone,
        offset: const Offset(2, 2),
        blurRadius: 1,
      ),
      BoxShadow(
        color: colorPhone,
        offset: const Offset(-2, -2),
        blurRadius: 1,
      ),
      BoxShadow(
        color: colorPhone,
        offset: const Offset(-2, 2),
        blurRadius: 1,
      ),
      BoxShadow(
        color: colorPhone,
        offset: const Offset(2, -2),
        blurRadius: 1,
      ),
    ];

    return AnimatedContainer(
      padding: const EdgeInsets.all(1),
      duration: const Duration(milliseconds: 300),
      width: double.infinity, // Un poco más pequeña que la primera capa
      height: double.infinity, // Un poco más baja que la primera capa
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: appBarColor,
          boxShadow: shadowsSecondLayer),
      child: quarterLayer(),
    );
  }

  Widget quarterLayer() {
    Color layerColor = Colors.black;
    Radius borderRadiusTop = const Radius.circular(18);
    Radius borderRadiusBottom = const Radius.circular(22);

    return AnimatedContainer(
      padding: const EdgeInsets.only(bottom: 13),
      duration: const Duration(milliseconds: 300),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: borderRadiusTop,
              topRight: borderRadiusTop,
              bottomLeft: borderRadiusBottom,
              bottomRight: borderRadiusBottom),
          color: layerColor,
          border: Border.all(color: layerColor)),
      child: screenPhoneFifthLayer(),
    );
  }

  Widget screenPhoneFifthLayer() {
    Color layerColor = Colors.black;
    Radius borderRadiusTop = const Radius.circular(18);
    Radius borderRadiusBottom = const Radius.circular(22);
    Radius borderRadiusScreenPhoneTop = const Radius.circular(16);
    Radius borderRadiusScreenPhoneBottom = const Radius.circular(20);

    return AnimatedContainer(
      padding: const EdgeInsets.all(1),
      duration: const Duration(milliseconds: 300),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: borderRadiusTop,
          topRight: borderRadiusTop,
          bottomLeft: borderRadiusBottom,
          bottomRight: borderRadiusBottom,
        ),
        border: Border.all(color: layerColor),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: borderRadiusScreenPhoneTop,
            topRight: borderRadiusScreenPhoneTop,
            bottomLeft: borderRadiusScreenPhoneBottom,
            bottomRight: borderRadiusScreenPhoneBottom,
          ),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Image.asset(
                "assets/images/wallpaper.jpg",
                fit: BoxFit.cover,
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: camera())
            ],
          )),
    );
  }

  Widget camera() {
    return Transform(
      transform: Matrix4.identity()..rotateZ(pi / 4),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:613653895.
      origin: Offset.fromDirection(-0.3, 20),
      alignment: Alignment.center,
      child: Container(
          width: 28,
          height: 28,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(10)))),
    );
  }
}

// class WavePainter extends CustomPainter { 
// final double animationValue; // Animation value to control the wave height 

// WavePainter(this.animationValue); 

// @override 
// void paint(Canvas canvas, Size size) { 
// 	final paintGreen = Paint() 
// 	..color = Colors.green // Green color for the wave 
// 	..style = PaintingStyle.fill; // Filling the wave 

// 	final pathGreen = Path(); 
// 	pathGreen.moveTo(0, size.height); 
// 	pathGreen.lineTo(0, size.height * 0.6); // Starting point for the wave 

// 	for (var i = 0; i < size.width; i++) { 
// 	final x = i.toDouble(); 
// 	final y = size.height * 0.56 + 
// 		animationValue * 
// 			30 * 
// 			sin((i / size.width) * 3 * pi); // Calculate wave shape 
// 	pathGreen.lineTo(x, y); // Define wave path 
// 	} 

// 	pathGreen.lineTo(size.width, size.height); // Complete the wave path 
// 	pathGreen.close(); 

// 	canvas.drawPath(pathGreen, paintGreen); // Draw the green wave 
// } 

// @override 
// bool shouldRepaint(covariant CustomPainter oldDelegate) { 
// 	return true; // Repaint the wave continuously 
// } 
// }
