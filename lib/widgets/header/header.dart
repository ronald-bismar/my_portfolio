import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> itemsHeader;

  const Header({super.key, required this.itemsHeader});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      centerTitle: true,
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: itemsHeader),
      toolbarHeight: 66.0,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(66.0);
}
