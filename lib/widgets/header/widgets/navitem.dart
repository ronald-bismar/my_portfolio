import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String textItemNavbar;

  const NavItem({super.key, required this.textItemNavbar});
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          textItemNavbar,
          style: const TextStyle(fontSize: 16),
        ));
  }
}
