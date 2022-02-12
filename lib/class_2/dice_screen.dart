import 'package:flutter/material.dart';
import 'package:flutter_class_1/class_2/components/dice_widget.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: const [
            DiceWidget(number: 4,),
            DiceWidget(number: 6,),
          ],
        ),
      ),
    );
  }
}


