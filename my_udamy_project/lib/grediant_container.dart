import 'package:flutter/material.dart';
import 'package:my_udamy_project/dice_roller.dart';

Alignment startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomLeft;

class GrediantContainer extends StatelessWidget {
  const GrediantContainer(this.gredientColors, {super.key});

  final List<Color> gredientColors;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: gredientColors,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
