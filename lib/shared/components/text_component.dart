import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String data;

  const TextComponent({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        data,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24.0,
        ),
      ),
    );
  }
}
