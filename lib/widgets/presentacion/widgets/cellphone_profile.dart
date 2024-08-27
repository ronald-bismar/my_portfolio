import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/presentacion/widgets/cellphoneUI.dart';

class CellphoneProfile extends StatelessWidget {
  const CellphoneProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(child: Center(child: CellPhoneUI()));
  }
}
