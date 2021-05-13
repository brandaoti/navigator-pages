import 'package:flutter/material.dart';
import 'package:navigator_pages/screens/second_view.dart';
import 'package:navigator_pages/screens/third_screen.dart';
import 'package:navigator_pages/shared/components/button_component.dart';
import 'package:navigator_pages/shared/components/container_box_shadow_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('First'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Informação 1'),
          Divider(
            height: 50.0,
            color: Colors.black,
            indent: 20.0,
            endIndent: 20.0,
          ),

          //
          ContainerBoxShadowComponent(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonComponent(
                    label: 'Second',
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SecondScreen(),
                        ))),
                //
                ButtonComponent(
                    label: 'Third',
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ThirdScreen(),
                        ))),
              ],
            ),
          ),

          //
        ],
      ),
    );
  }
}
