import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class AspectIphone {
  //Se suma 14 a los radius
  Color colorPhone = const Color.fromARGB(255, 49, 60, 75);
  Widget secondLayerLight() {
    Color colorSombra = Colors.white;
    List<BoxShadow> shadowsSecondLayer = List.generate(
        12,
        (index) => BoxShadow(
              color: colorSombra,
              blurRadius: 2.6,
            ));

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
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

    return Container(
      padding: const EdgeInsets.all(1),
      width: double.infinity, // Un poco más pequeña que la primera capa
      height: double.infinity, // Un poco más baja que la primera capa
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: appBarColor,
          boxShadow: shadowsSecondLayer),
      child: quarterLayer(),
    );
  }

  Widget quarterLayer() {
    Color layerColor = Colors.black;
    Radius borderRadius = const Radius.circular(38);

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(borderRadius),
          color: layerColor,
          border: Border.all(color: layerColor)),
      child: screenPhoneFifthLayer(),
    );
  }

  Widget screenPhoneFifthLayer() {
    Color layerColor = Colors.black;
    Radius borderRadius = const Radius.circular(36);

    return Container(
      padding: const EdgeInsets.all(3),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          borderRadius,
        ),
        border: Border.all(color: layerColor),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.all(
            borderRadius,
          ),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Image.asset(
                "assets/images/iphone.jpg",
                fit: BoxFit.cover,
              ),
              Align(alignment: Alignment.topCenter, child: camera())
            ],
          )),
    );
  }

  Widget camera() {
    return Container(
        margin: const EdgeInsets.all(6),
        width: 70,
        height: 20,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10))));
  }
}
