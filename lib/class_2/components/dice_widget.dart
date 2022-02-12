import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    Key? key,
    required this.number,
    required this.onPressed,
  }) : super(key: key);

  final int number;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage('assets/images/dice$number.png'),
          ),
        ),
      ),
    );
  }
}
