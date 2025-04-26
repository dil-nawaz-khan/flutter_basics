import 'package:flutter/material.dart';
import 'dart:math';

final Random randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int activeDiceImage = 1;

  void rollDice() {
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$activeDiceImage.png', width: 200.0),
        SizedBox(height: 20.0),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(top: 20.0),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 24.0),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
