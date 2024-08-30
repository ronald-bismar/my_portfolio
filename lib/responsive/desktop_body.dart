import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/header/header.dart';
import 'package:my_portfolio/widgets/header/widgets/btn_contact.dart';
import 'package:my_portfolio/widgets/header/widgets/item_logo.dart';
import 'package:my_portfolio/widgets/header/widgets/navbar.dart';
import 'package:my_portfolio/widgets/presentacion/presentation.dart';
import 'package:my_portfolio/widgets/presentacion/widgets/cellphone_profile.dart';
import 'package:my_portfolio/widgets/presentacion/widgets/text_name.dart';

import '../constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  List<Widget> itemsHeader = [
    const ItemLogo(),
    const Navbar(),
    const ButtonContact()
  ];

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.height * 0.22);
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: Header(
        itemsHeader: itemsHeader,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Presentation(
                  heightScreen: heightScreen,
                  context: context,
                  itemRowOrColumn: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [TextName(), CellphoneProfile()])),
            ],
          ),
        ),
      ),
    );
  }
}
