import 'package:flutter/material.dart';

class ContainerBoxShadowComponent extends StatelessWidget {
  final Widget child;

  const ContainerBoxShadowComponent({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .8,
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            offset: Offset(0, 2),
            blurRadius: 3,
          ),
        ],
      ),
      child: child,
    );
  }
}
