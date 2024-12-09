import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class SamsungIphone extends StatefulWidget {
  final bool isIphone;
  const SamsungIphone(this.isIphone, {super.key});

  @override
  State<SamsungIphone> createState() => _SamsungIphoneState();
}

class _SamsungIphoneState extends State<SamsungIphone> {
  Color colorPhone = const Color.fromARGB(255, 41, 41, 41);

  Widget secondLayerLight() {
    Color colorSombra = Colors.white;
    BorderRadius radius1Samsung = BorderRadius.circular(22);
    BorderRadius radius1Iphone = BorderRadius.circular(40);
    final double blurRadius = widget.isIphone ? 2.6 : 2;

    List<BoxShadow> shadowsSecondLayer = List.generate(
        12,
        (index) => BoxShadow(
              color: colorSombra,
              blurRadius: blurRadius,
            ));

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: widget.isIphone ? radius1Iphone : radius1Samsung,
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

    BorderRadius radius1Samsung = BorderRadius.circular(18);
    BorderRadius radius1Iphone = BorderRadius.circular(40);

    return Container(
      padding: const EdgeInsets.all(1),
      width: double.infinity, // Un poco más pequeña que la primera capa
      height: double.infinity, // Un poco más baja que la primera capa
      decoration: BoxDecoration(
          borderRadius: widget.isIphone ? radius1Iphone : radius1Samsung,
          color: appBarColor,
          boxShadow: shadowsSecondLayer),
      child: quarterLayer(),
    );
  }

  Widget quarterLayer() {
    Color layerColor = Colors.black;
    Radius borderRadiusTop = const Radius.circular(18);
    Radius borderRadiusBottom = const Radius.circular(22);

    BorderRadius allBorderRadius = widget.isIphone
        ? const BorderRadius.all(Radius.circular(38))
        : BorderRadius.only(
            topLeft: borderRadiusTop,
            topRight: borderRadiusTop,
            bottomLeft: borderRadiusBottom,
            bottomRight: borderRadiusBottom);

    return Container(
      padding: const EdgeInsets.only(bottom: 13),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: allBorderRadius,
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

    BorderRadius allBorderRadius = widget.isIphone
        ? const BorderRadius.all(
            Radius.circular(36),
          )
        : BorderRadius.only(
            topLeft: borderRadiusTop,
            topRight: borderRadiusTop,
            bottomLeft: borderRadiusBottom,
            bottomRight: borderRadiusBottom,
          );

    return Container(
      padding: const EdgeInsets.all(1),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: allBorderRadius,
        border: Border.all(color: layerColor),
      ),
      child: ClipRRect(
          borderRadius: allBorderRadius,
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

  @override
  Widget build(BuildContext context) {
    return secondLayerLight();
  }
}
