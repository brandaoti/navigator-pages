import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String label;
  final Function onPressed;

  const ButtonComponent({
    Key key,
    @required this.label,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton.icon(
        label: Text(label),
        icon: Icon(Icons.add_to_home_screen_rounded),
        onPressed: onPressed,
      ),
    );
  }
}
