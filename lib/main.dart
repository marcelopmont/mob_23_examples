import 'package:flutter/material.dart';
import 'package:flutter_class_1/class_1/card_screen.dart';
import 'package:flutter_class_1/class_2/dice_screen.dart';
import 'package:flutter_class_1/class_3/constants.dart';
import 'package:flutter_class_1/class_3/rpg_screen.dart';
import 'package:flutter_class_1/sand_box/sand_box_screen.dart';

void main() {
  runApp(const Mob23Examples());
}

class Mob23Examples extends StatelessWidget {
  const Mob23Examples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        primaryColorDark: kDarkPrimaryColor,
        primaryColorLight: kLightPrimaryColor,
        textTheme: TextTheme(
          bodyText2: kBodyText,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: kDarkPrimaryColor,
        ),
      ),
      home: RpgScreen(),
    );
  }
}
