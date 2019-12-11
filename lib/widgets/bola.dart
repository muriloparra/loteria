import 'package:flutter/material.dart';

class Bola extends StatelessWidget {
  String n;

  Bola(String numero) {
    n = numero;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          n,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      width: 25.0,
      height: 25.0,
      decoration:
          new BoxDecoration(color: Colors.green, shape: BoxShape.circle),
    );
  }
}
