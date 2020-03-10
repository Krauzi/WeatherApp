import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class GradientBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromRGBO(45, 30, 170, 1), Color.fromRGBO(45, 30, 170, 0.8)]
            )
        )
    );
  }
}

// day: colors: [Color.fromRGBO(51, 40, 203, 1), Color.fromRGBO(51, 40, 203, 0.8)]
// night: colors: [Color.fromRGBO(16, 10, 110, 1), Color.fromRGBO(16, 10, 110, 0.8)]