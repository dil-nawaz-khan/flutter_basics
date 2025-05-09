import 'package:flutter/material.dart';
import 'package:flutter_basics/dice_roller.dart';

// import 'package:flutter_basics/styled_text.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // const GradientContainer({key}) : super(key: key);
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.reddish({super.key})
    : color1 = Colors.red,
      color2 = Colors.orange;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1, color2],
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
// class GradientContainer extends StatelessWidget {
//   // const GradientContainer({key}) : super(key: key);
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: startAlignment,
//           end: endAlignment,
//           colors: colors,
//         ),
//       ),
//       child: Center(child: StyledText('Hello World!')),
//     );
//   }
// }
