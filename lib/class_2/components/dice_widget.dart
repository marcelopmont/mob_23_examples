import 'package:flutter/widgets.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image(
          image: AssetImage('assets/images/dice$number.png'),
        ),
      ),
    );
  }
}
