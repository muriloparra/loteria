import 'dart:math';

import 'package:flutter/material.dart';

class Trevo extends StatelessWidget {
  var color;

  Trevo(Color color) {
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Transform.translate(child: Transform.rotate(
            child: Icon(Icons.favorite, color: color[200],),
            angle: -45 * pi / 180,), offset: Offset(-8.0, -8.0),),
          Transform.translate(child: Transform.rotate(
            child: Icon(Icons.favorite, color: color,), angle: 45 * pi / 180,),
            offset: Offset(8.0, -8.0),),
          Transform.translate(child: Transform.rotate(
            child: Icon(Icons.favorite, color: color[200],),
            angle: 135 * pi / 180,), offset: Offset(8.0, 8.0),),
          Transform.translate(child: Transform.rotate(
            child: Icon(Icons.favorite, color: color,),
            angle: -135 * pi / 180,), offset: Offset(-8.0, 8.0),),
        ],
      ),
    );
  }
}
