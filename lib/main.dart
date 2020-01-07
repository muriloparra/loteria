import 'package:flutter/material.dart';
import 'package:loteria/mega/mega_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MuriApp Megasena',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MegaHome(title: 'Mega-sena'),
      debugShowCheckedModeBanner: false,
    );
  }
}
