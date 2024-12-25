import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/desktop_body.dart';
import 'package:my_portfolio/responsive/tablet_body.dart';

import 'responsive/mobile_body.dart';
import 'responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'SamsungOne',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
      ),
      home: const ResponsiveLayout(
        mobileBody: MobileScaffold(),
        tabletBody: TabletScaffold(),
        desktopBody: DesktopScaffold(),
      ),
    );
  }
}
