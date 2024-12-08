import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class AspectSamsung {
  Color colorPhone = const Color.fromARGB(255, 41, 41, 41);
  Widget secondLayerLight() {
    Color colorSombra = Colors.white;
    List<BoxShadow> shadowsSecondLayer = List.generate(
        12,
        (index) => BoxShadow(
              color: colorSombra,
              blurRadius: 2,
            ));

    return Container(
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

    return Container(
      padding: const EdgeInsets.all(1),
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

    return Container(
      padding: const EdgeInsets.only(bottom: 13),
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

    return Container(
      padding: const EdgeInsets.all(1),
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
              Align(alignment: Alignment.topCenter, child: camera())
            ],
          )),
    );
  }

  Widget camera() {
    return Transform(
      transform: Matrix4.identity()..rotateZ(pi / 4),
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
