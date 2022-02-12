import 'package:flutter/material.dart';
import 'package:flutter_class_1/class_3/modules/history_model.dart';
import 'package:flutter_class_1/utils/rounded_button.dart';

class RpgScreen extends StatefulWidget {
  static const id = 'rpg_screen';
  const RpgScreen({Key? key}) : super(key: key);

  @override
  State<RpgScreen> createState() => _RpgScreenState();
}

class _RpgScreenState extends State<RpgScreen> {
  var currentNode = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RPG'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              color: Theme.of(context).primaryColorLight,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(kHistory[currentNode].description),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: kHistory[currentNode].actions.length,
              itemBuilder: (context, index) {
                final historyAction = kHistory[currentNode].actions[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: RoundedButton(
                    text: historyAction.text,
                    onPressed: () {
                      setState(
                        () {
                          currentNode = historyAction.nextStep;
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
