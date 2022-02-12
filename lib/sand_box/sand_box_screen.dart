import 'package:flutter/material.dart';

class SandBoxScreen extends StatelessWidget {
  const SandBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: 100,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 100,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
