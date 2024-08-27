import 'package:flutter/material.dart';

class ItemLogo extends StatelessWidget {
  final Widget? navbar;

  const ItemLogo({super.key, this.navbar});
  @override
  Widget build(
    BuildContext context,
  ) {
    return const Text(
      'Ronald Bismar',
      style: TextStyle(color: Colors.amber, fontSize: 20),
    );
  }
}
