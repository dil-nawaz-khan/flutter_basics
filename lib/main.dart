import 'package:flutter/material.dart';

import 'package:flutter_basics/gradient_container.dart';

void main() => runApp(
  const MaterialApp(
    home: Scaffold(
      // named constructor => GradientContainer.reddish()
      body: GradientContainer(Colors.deepPurpleAccent, Colors.deepPurple),
    ),
  ),
);
