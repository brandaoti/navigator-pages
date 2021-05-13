import 'package:flutter/material.dart';
import 'package:navigator_pages/screens/home_screen.dart';
import 'package:navigator_pages/screens/third_screen.dart';
import 'package:navigator_pages/shared/components/button_component.dart';
import 'package:navigator_pages/shared/components/container_box_shadow_component.dart';

class SecondScreen extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
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
                ButtonComponent(
                    label: 'Third',
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ThirdScreen(),
                        ))),
                ButtonComponent(label: 'Fourth', onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
