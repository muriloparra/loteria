import 'dart:math';

import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

import 'bola.dart';

Widget myShapeNumber(String numero) {
  return Animator(
    tweenMap: {
      "opacity": Tween<double>(begin: 0, end: 1),
      "translation": Tween<Offset>(begin: Offset(5, 0), end: Offset.zero),
      "rotation": Tween<double>(begin: 4 * pi, end: 0),
    },
    duration: Duration(milliseconds: 800),
    cycles: 0,
    repeats: 1,
    resetAnimationOnRebuild: true,
    builderMap: (a) => FadeTransition(
      opacity: a["opacity"],
      child: FractionalTranslation(
        translation: a["translation"].value,
        child: Transform.rotate(
          angle: a["rotation"].value,
          child: Bola(numero),
        ),
      ),
    ),
  );
}
