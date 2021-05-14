import 'package:flutter/material.dart';
import '../shared/components/text_component.dart';

import '../shared/components/button_component.dart';
import '../shared/components/container_box_shadow_component.dart';
import '../shared/core/routes/app_route.dart';
import 'fourth_screen.dart';

class SecondScreen extends StatelessWidget {
  //

  final String msg = '2° Screen';

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
          TextComponent(data: msg),

          // SizedBox(height: 50.0),

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
                ButtonComponent(
                    label: 'Fourth',
                    onPressed: () {
                      // Não passei uma cor
                      // A tela 4 vai assumir a cor preta por padrão
                      final args = GetDataFromFourthScreen();
                      Navigator.pushNamed(
                        context,
                        AppRoute.FOURTH_SCREEN,
                        arguments: args,
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
