import 'package:flutter/material.dart';

import 'package:flutter_basics/styled_text.dart';

class GradientContainer extends StatelessWidget {
  // const GradientContainer({key}) : super(key: key);
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.deepPurpleAccent, Colors.deepPurple],
        ),
      ),
      child: const Center(child: StyledText()),
    );
  }
}
