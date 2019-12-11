import 'package:flutter/material.dart';
import 'package:loteria/widgets/trevo.dart';

class MyBar extends StatefulWidget implements PreferredSizeWidget {
  MyBar({Key key, String title, Color colorTrevo})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        title = title,
        color = colorTrevo,
        super(key: key);

  final String title;
  final Color color;

  @override
  final Size preferredSize;

  @override
  _MyBarState createState() => _MyBarState();
}

class _MyBarState extends State<MyBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: <Widget>[
          Trevo(super.widget.color),
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
            child: Text(super.widget.title),
          ),
        ],
      ),
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Icon(Icons.dehaze),
      ),
    );
  }
}
