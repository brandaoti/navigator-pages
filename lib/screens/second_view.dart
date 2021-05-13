import 'package:flutter/material.dart';
import 'package:navigator_pages/screens/home_screen.dart';
import 'package:navigator_pages/screens/third_screen.dart';
import 'package:navigator_pages/shared/components/button_component.dart';
import 'package:navigator_pages/shared/components/container_box_shadow_component.dart';
import 'package:navigator_pages/shared/core/routes/app_route.dart';

class Parameters {
  final String information;

  Parameters(this.information);
}

class SecondScreen extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    final parameters = ModalRoute.of(context).settings.arguments as Parameters;

    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('texto'),

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
                    label: 'Third',
                    onPressed: () => Navigator.pushNamed(
                          context,
                          AppRoute.THIRD_SCREEN,
                        )),
                ButtonComponent(label: 'Fourth', onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
