import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  GradientContainer.purple({super.key})
      : colors = [Colors.white70, Colors.red];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return(Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    ));
  }
}