import 'package:flutter/material.dart';
import 'package:flutter_class_1/class_1/card_screen.dart';

void main() {
  runApp(const Mob23Examples());
}

class Mob23Examples extends StatelessWidget {
  const Mob23Examples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: CardScreen(),
    );
  }
}