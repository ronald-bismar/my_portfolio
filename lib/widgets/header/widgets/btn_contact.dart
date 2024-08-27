import 'package:flutter/material.dart';

class ButtonContact extends StatelessWidget {
  final Widget? navbar;

  const ButtonContact({super.key, this.navbar});
  @override
  Widget build(
    BuildContext context,
  ) {
    return ElevatedButton(onPressed: () {}, child: const Text("Contactame"));
  }
}
