import 'package:flutter/material.dart';

class TextName extends StatelessWidget {
  const TextName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [firstText(), nameText(), cargoText()],
    )));
  }

  firstText() {
    return const FittedBox(
      fit: BoxFit.contain,
      child: Text(
        "Hey!, My Name is",
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  nameText() {
    return const FittedBox(
        fit: BoxFit.contain,
        child: Text(
          "Ronald Bismar",
          style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
        ));
  }

  cargoText() {
    return const FittedBox(
      fit: BoxFit.contain,
      child: Text(
        "Mobile, Web developer",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}
