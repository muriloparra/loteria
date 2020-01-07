import 'package:flutter/material.dart';

import 'my_shape_number.dart';

Widget myShapeRow(String numeros) {
  var array = numeros.split("-");
  return Row(
    children: <Widget>[
      myShapeNumber(array[0]),
      myShapeNumber(array[1]),
      myShapeNumber(array[2]),
      myShapeNumber(array[3]),
      myShapeNumber(array[4]),
      myShapeNumber(array[5]),
    ],
  );
}
