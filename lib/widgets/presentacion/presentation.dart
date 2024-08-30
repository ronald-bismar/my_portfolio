import 'package:flutter/material.dart';

class Presentation extends StatelessWidget {
  final Widget itemRowOrColumn;
  final BuildContext context;
  final double heightScreen;

  const Presentation(
      {super.key,
      required this.context,
      required this.itemRowOrColumn,
      required this.heightScreen});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: heightScreen, width: double.infinity, child: itemRowOrColumn);
  }
}
