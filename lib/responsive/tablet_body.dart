import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/header/header.dart';
import 'package:my_portfolio/widgets/header/widgets/btn_contact.dart';
import 'package:my_portfolio/widgets/header/widgets/item_logo.dart';
import 'package:my_portfolio/widgets/presentacion/presentation.dart';
import 'package:my_portfolio/widgets/presentacion/widgets/cellphone_profile.dart';
import 'package:my_portfolio/widgets/presentacion/widgets/text_name.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  List<Widget> itemsHeader = [const ItemLogo(), const ButtonContact()];
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.height / 3);
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
                  heightScreen: heightScreen * 2,
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
