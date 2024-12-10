import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_portfolio/aspects/osandroid.dart';
import 'package:my_portfolio/constants.dart';

class CellPhoneUI extends StatefulWidget {
  const CellPhoneUI({super.key});

  @override
  CellphoneUIState createState() => CellphoneUIState();
}

class CellphoneUIState extends State<CellPhoneUI> {
  static const _durationAnimation = Duration(milliseconds: 200);
  static const _iphoneColor = Color.fromARGB(255, 49, 60, 75);
  static const _samsungColor = Color.fromARGB(255, 41, 41, 41);

  static final _outlineShadows = [
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

  late Color _colorPhone;
  bool _isIphone = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _colorPhone = _isIphone ? _iphoneColor : _samsungColor;
    return firstLayerDark();
  }

  Widget firstLayerDark() {
    return GestureDetector(
      onTap: () => setState(() => _isIphone = !_isIphone),
      child: Center(
        child: AnimatedContainer(
            padding: EdgeInsets.all(_isIphone ? 4 : 5),
            duration: _durationAnimation,
            width: _isIphone ? 265 : 260,
            height: _isIphone ? 535 : 550,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_isIphone ? 44 : 28),
              color: _colorPhone,
              boxShadow: _outlineShadows,
            ),
            child: secondLayerLight()),
      ),
    );
  }

  Widget secondLayerLight() {
    Color colorSombra = Colors.white;
    BorderRadius radius1Samsung = BorderRadius.circular(22);
    BorderRadius radius1Iphone = BorderRadius.circular(40);
    final double blurRadius = _isIphone ? 2.6 : 2;

    List<BoxShadow> shadowsSecondLayer = List.generate(
        12,
        (index) => BoxShadow(
              color: colorSombra,
              blurRadius: blurRadius,
            ));

    return AnimatedContainer(
      duration: _durationAnimation,
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: _isIphone ? radius1Iphone : radius1Samsung,
          color: colorSombra,
          boxShadow: shadowsSecondLayer),
      child: thirdLayerLight(),
    );
  }

  Widget thirdLayerLight() {
    List<BoxShadow> shadowsSecondLayer = [
      BoxShadow(
        color: _colorPhone,
        offset: const Offset(2, 2),
        blurRadius: 1,
      ),
      BoxShadow(
        color: _colorPhone,
        offset: const Offset(-2, -2),
        blurRadius: 1,
      ),
      BoxShadow(
        color: _colorPhone,
        offset: const Offset(-2, 2),
        blurRadius: 1,
      ),
      BoxShadow(
        color: _colorPhone,
        offset: const Offset(2, -2),
        blurRadius: 1,
      ),
    ];

    BorderRadius radius1Samsung = BorderRadius.circular(18);
    BorderRadius radius1Iphone = BorderRadius.circular(40);

    return AnimatedContainer(
      duration: _durationAnimation,
      padding: const EdgeInsets.all(1),
      width: double.infinity, // Un poco más pequeña que la primera capa
      height: double.infinity, // Un poco más baja que la primera capa
      decoration: BoxDecoration(
          borderRadius: _isIphone ? radius1Iphone : radius1Samsung,
          color: appBarColor,
          boxShadow: shadowsSecondLayer),
      child: quarterLayer(),
    );
  }

  Widget quarterLayer() {
    Color layerColor = Colors.black;
    Radius borderRadiusTop = const Radius.circular(18);
    Radius borderRadiusBottom = const Radius.circular(22);

    BorderRadius allBorderRadius = _isIphone
        ? const BorderRadius.all(Radius.circular(38))
        : BorderRadius.only(
            topLeft: borderRadiusTop,
            topRight: borderRadiusTop,
            bottomLeft: borderRadiusBottom,
            bottomRight: borderRadiusBottom);

    double paddingBottom = _isIphone ? 1 : 13;

    return AnimatedContainer(
      duration: _durationAnimation,
      padding: EdgeInsets.only(bottom: paddingBottom),
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

    BorderRadius allBorderRadius = _isIphone
        ? const BorderRadius.all(
            Radius.circular(36),
          )
        : BorderRadius.only(
            topLeft: borderRadiusTop,
            topRight: borderRadiusTop,
            bottomLeft: borderRadiusBottom,
            bottomRight: borderRadiusBottom,
          );

    return AnimatedContainer(
      duration: _durationAnimation,
      padding: EdgeInsets.all(_isIphone ? 2 : 1.2),
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
              AnimatedCrossFade(
                  firstChild: SizedBox.expand(
                    child: Image.asset(
                      "assets/images/iphone.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  secondChild: SizedBox.expand(
                      child: Image.asset("assets/images/wallpaper.jpg",
                          fit: BoxFit.cover)),
                  crossFadeState: _isIphone
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: _durationAnimation),
              Align(alignment: Alignment.topCenter, child: camera()),
              const ScreenMainAndroid()
            ],
          )),
    );
  }

  Widget camera() {
    BorderRadius borderRadius = _isIphone
        ? const BorderRadius.all(Radius.circular(10))
        : const BorderRadius.only(bottomRight: Radius.circular(10));

    return Transform(
      transform: Matrix4.identity()..rotateZ(_isIphone ? 0 : (pi / 4)),
      origin: Offset.fromDirection(-0.3, 20),
      alignment: Alignment.center,
      child: AnimatedContainer(
          margin: EdgeInsets.all(_isIphone ? 6 : 0),
          duration: _durationAnimation,
          width: _isIphone ? 70 : 28,
          height: _isIphone ? 20 : 28,
          decoration:
              BoxDecoration(color: Colors.black, borderRadius: borderRadius)),
    );
  }
}
