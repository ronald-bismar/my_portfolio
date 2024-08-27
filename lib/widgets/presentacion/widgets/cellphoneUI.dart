import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class CellPhoneUI extends StatefulWidget {
  const CellPhoneUI({super.key});

  @override
  _CellphoneUIState createState() => _CellphoneUIState();
}

class _CellphoneUIState extends State<CellPhoneUI> {
  Color colorPhone = const Color.fromARGB(255, 41, 41, 41);
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
    return AnimatedContainer(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      duration: const Duration(milliseconds: 2000),
      width: 240,
      height: 1560,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: colorPhone,
        boxShadow: outlineShadows,
      ),
      child: secondLayerLight(),
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
      duration: const Duration(milliseconds: 2000),
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
      duration: const Duration(milliseconds: 2000),
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
      duration: const Duration(milliseconds: 2000),
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
      duration: const Duration(milliseconds: 2000),
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
        child: Image.asset(
          "images/wallpaper.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
