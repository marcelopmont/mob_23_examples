import 'package:flutter/material.dart';
import 'package:flutter_class_1/class_3/components/rpg_button.dart';
import 'package:flutter_class_1/class_3/modules/history_model.dart';

class RpgScreen extends StatefulWidget {
  const RpgScreen({Key? key}) : super(key: key);

  @override
  State<RpgScreen> createState() => _RpgScreenState();
}

class _RpgScreenState extends State<RpgScreen> {
  var currentNode = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
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
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(kHistory[currentNode].description),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: kHistory[currentNode].actions.length,
              itemBuilder: (context, index) {
                final historyAction = kHistory[currentNode].actions[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: RpgButton(
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
