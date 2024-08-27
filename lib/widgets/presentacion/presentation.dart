import 'package:flutter/material.dart';

class Presentation extends StatelessWidget {
  final Widget itemRowOrColumn;
  final BuildContext context;

  const Presentation(
      {super.key, required this.context, required this.itemRowOrColumn});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height -
            (MediaQuery.of(context).size.height * 0.22),
        width: double.infinity,
        child: itemRowOrColumn);
  }
}
