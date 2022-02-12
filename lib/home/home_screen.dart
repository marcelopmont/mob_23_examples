import 'package:flutter/material.dart';
import 'package:flutter_class_1/class_1/card_screen.dart';
import 'package:flutter_class_1/class_2/dice_screen.dart';
import 'package:flutter_class_1/class_3/rpg_screen.dart';
import 'package:flutter_class_1/sand_box/sand_box_screen.dart';
import 'package:flutter_class_1/utils/rounded_button.dart';

class HomeScreen extends StatelessWidget {
  static const id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplos 23MOB'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundedButton(text: 'Sand Box', onPressed: () => Navigator.pushNamed(context, SandBoxScreen.id)),
            RoundedButton(text: 'Cartão pessoal', onPressed: () => Navigator.pushNamed(context, CardScreen.id)),
            RoundedButton(text: 'Dado', onPressed: () => Navigator.pushNamed(context, DiceScreen.id)),
            RoundedButton(text: 'RPG', onPressed: () => Navigator.pushNamed(context, RpgScreen.id)),
          ],
        ),
      ),
    );
  }
}
