import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_class_1/class_2/components/dice_widget.dart';

class DiceScreen extends StatefulWidget {
  DiceScreen({Key? key}) : super(key: key);

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  final random = Random();
  late int dice1Value;
  late int dice2Value;

  @override
  void initState() {
    super.initState();
    dice1Value = 1;
    dice2Value = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: [
            DiceWidget(
              number: dice1Value,
              onPressed: () {
                setState(() {
                  dice1Value = random.nextInt(6) + 1;
                });
              },
            ),
            DiceWidget(
              number: dice2Value,
              onPressed: () {
                setState(() {
                  dice2Value = random.nextInt(6) + 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
