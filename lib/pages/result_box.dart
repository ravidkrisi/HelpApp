import 'package:flutter/cupertino.dart';

class resultBox extends StatelessWidget {
  Color _bg_color;
  double _height;

  resultBox(Color color, {height = 150})
      : _bg_color = color,
        _height = height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      color: _bg_color,
      child: Text("box"),
    );
  }
}
