import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/header/widgets/navitem.dart';

class Navbar extends StatelessWidget {
  final Widget? navbar;

  const Navbar({super.key, this.navbar});
  @override
  Widget build(
    BuildContext context,
  ) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NavItem(textItemNavbar: "INFORMACION"),
        NavItem(textItemNavbar: "MIS PROYECTOS"),
        NavItem(textItemNavbar: "MY SKILLS"),
        NavItem(textItemNavbar: "EXPERIENCE"),
        NavItem(textItemNavbar: "MY RESUME")
      ],
    );
  }
}
