import 'package:flutter/material.dart';

import 'my_shape_row.dart';

Widget myCard(int numeroJogo, String jogo) {
  return Card(
    child: ListTile(
      leading: Text(
        numeroJogo.toString(),
        style: TextStyle(
          color: Colors.blue,
          fontSize: 24.0,
        ),
      ),
      title: Center(child: myShapeRow(jogo)),
    ),
  );
}
