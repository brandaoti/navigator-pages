import 'package:flutter/material.dart';
import 'package:navigator_pages/screens/home_screen.dart';
import 'package:navigator_pages/shared/components/button_component.dart';
import 'package:navigator_pages/shared/components/container_box_shadow_component.dart';

class FourthScreen extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Ola meu amigo!'),

          Divider(height: 50.0, color: Colors.orange),
          //
          ContainerBoxShadowComponent(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonComponent(label: 'Third', onPressed: () {}),
                ButtonComponent(label: 'Fourth', onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
