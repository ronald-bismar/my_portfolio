import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/header/header.dart';
import 'package:my_portfolio/widgets/header/widgets/item_logo.dart';
import 'package:my_portfolio/widgets/presentacion/presentation.dart';
import 'package:my_portfolio/widgets/presentacion/widgets/cellphone_profile.dart';
import 'package:my_portfolio/widgets/presentacion/widgets/text_name.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  List<Widget> itemsHeader = [
    const ItemLogo(),
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
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Presentation(
                  heightScreen: heightScreen *
                      2, //Para duplicar la pantalla verticalmente
                  context: context,
                  itemRowOrColumn: const Column(
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
