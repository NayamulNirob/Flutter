import 'dart:math';

import 'package:flutter/material.dart';

class DiceGame extends StatefulWidget {
  const DiceGame({super.key});
  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  var diceNumber = 'assets/images/dice-1.png';

  void rollDice() {
    var randomNumber = Random().nextInt(6) + 1;
    setState(() {
      diceNumber = 'assets/images/dice-$randomNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(diceNumber, width: 200.0, height: 200.0),
          ElevatedButton(
            onPressed: () {
              rollDice();
            },
            child: const Text('Roll the Dice!'),
          ),
        ],
      ),
    );
  }
}
